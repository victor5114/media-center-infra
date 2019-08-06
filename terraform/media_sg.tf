resource "scaleway_security_group" "whitelist" {
  name        = "home"
  description = "Accept incoming traffic from whitelisted sources"
}

resource "scaleway_security_group_rule" "http_home" {
  security_group = "${scaleway_security_group.whitelist.id}"

  action    = "accept"
  direction = "inbound"
  ip_range  = "176.185.196.57"
  protocol  = "TCP"

  #   port      = 25
}
