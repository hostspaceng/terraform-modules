resource "aws_lb" "alb" {
    name = "${var.alb_name}"
    internal = true
    load_balancer_type = "applcation"
    security_groups = ["value"]
    subnets = [ "value" ]
    enable_http2 = false
    enable_deletion_protection = false

    tags = {
        name = "${var.alb_name}"
    }
}


resource "aws_lb_target_group" "target_group" {
    name = "${var.tg_name}"
    port = 80
    protocol = "HTTP"
    target_type = "instance"
    vpc_id = []

    health_check {
      path = "/"
      protocol = "HTTP"
      matcher = "200"
      interval = 15
      healthy_threshold = 3
      timeout = 3
      unhealthy_threshold = 3
    }
  
}

resource "aws_lb_target_group_attachment" "tg_atch" {
    target_group_arn = aws_lb_target_group.target_group.arn
    target_id = aws_lb_target_group.target_group.id
    port = 80
}

resource "aws_lb_listener" "front_end" {
    load_balancer_arn = aws_lb.alb.arn
    port = "80"
    protocol = "HTTP"

    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.target_group.arn
    }
  
}

