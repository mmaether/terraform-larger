resource "aws_instance" "mmaether" {
  ami           = "ami-00068cd7555f543d5"
  instance_type = "t2.micro"

  tags = {
    Name = "mmaether instance"
  }
}

# Create the application load balancer
/*
resource "aws_lb" "test" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.lb_sg.id}"]
  subnets            = ["${aws_subnet.public.*.id}"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "${aws_s3_bucket.lb_logs.bucket}"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}




resource "aws_alb" "shorn-sheep-alb" {
  name = "shorn-sheep-alb"
  availability_zones = var.availability_zones

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  listener {
    instance_port      = 8000
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 3
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }
 
  instances                   = "aws_instance.shornsheep"
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "shorn-sheep-elb"
  }
}

/*
# Attach instance to load balancer
resource "aws_elb_attachment" "baz" {
  elb      = "aws_elb.shornsheepelb"
  instance = "aws_instance.shornsheep"
}
*/