output "web_public_ip" {
  description = "Public floating IP address of the web server."
  value       = openstack_networking_floatingip_v2.web.address
}

output "web_url" {
  description = "HTTP URL of the web server, ready to open in a browser."
  value       = "http://${openstack_networking_floatingip_v2.web.address}"
}
