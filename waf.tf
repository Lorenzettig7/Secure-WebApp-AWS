resource "aws_wafv2_web_acl" "web_acl" {
  name        = "web-acl"
  description = "WAF for web app"
  scope       = "REGIONAL"
  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "webACL"
    sampled_requests_enabled   = true
  }

  rule {
    name     = "AWS-AWSManagedRulesCommonRuleSet"
    priority = 1

    override_action {
      none {}
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "commonRules"
      sampled_requests_enabled   = true
    }
  }
}

resource "aws_wafv2_web_acl_association" "web_acl_attach" {
  resource_arn = aws_lb.web_alb.arn
  web_acl_arn  = aws_wafv2_web_acl.web_acl.arn
}

