output "lb_host" {
  value = aws_lb.this.dns_name
}

output "ssh_ports" {
  value = aws_lb_listener.ssh.*.port
}


output "mastercontroller_properties" {
  value = data.template_file.mastercontroller_properties.rendered
}

output "reporting_host" {
  value = "xlt.reporting.graphite.host = ${local.graphite_host}"
}

output "vpc_nat_eips" {
  value = module.vpc.nat_public_ips
}
