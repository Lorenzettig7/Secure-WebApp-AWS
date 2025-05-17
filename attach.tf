resource "aws_lb_target_group_attachment" "web_instance" {
  target_group_arn = aws_lb_target_group.web_tg.arn
  target_id        = aws_instance.web.id
  port             = 80
}


