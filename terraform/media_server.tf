resource "scaleway_ip" "media_server_public_ip" {
  count = 1
}

resource "scaleway_server" "media_server" {
  count          = 1
  name           = "media_server"
  image          = "${local.image_id}"
  type           = "${var.media_server_instance_type}"
  public_ip      = "${element(scaleway_ip.media_server_public_ip.*.ip, count.index)}"
  state          = "running"
  tags           = ["media-server", "docker", "prod"]
  security_group = "${scaleway_security_group.whitelist.id}"

  # volumes   = ["${scaleway_volume.volume_prod.id}"]
}

# resource "scaleway_volume" "volume" {
#   name       = "media_server_disk-50"
#   size_in_gb = 50
#   type       = "l_ssd"
# }


# resource "scaleway_volume_attachment" "disk_attachment" {
#   server = "${scaleway_server.media_server.id}"
#   volume = "${scaleway_volume.volume.id}"
# }

