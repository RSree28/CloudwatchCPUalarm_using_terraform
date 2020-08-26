resource "aws_cloudwatch_metric_alarm" "perf_cpu" {
  alarm_name                = "CPU_Utilisation"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "120"
  statistic                 = "Average"
  threshold                 = "80"
  alarm_description         = "This metric monitors ec2 cpu utilization"
  alarm_actions             = ["arn:aws:sns:us-east-1:757563985248:Terraform-Alert"]
  tags   =                   {
      "Key"="Provisioned"
     "Value"="Terraform"
  }
  dimensions = {
    InstanceId = "i-0f0297a7ed573f37e"
  }
}
