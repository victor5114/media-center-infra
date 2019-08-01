provider "scaleway" {
  organization = "${local.organization}"
  token        = "${local.token}"
  region       = "${var.region}"
}

locals {
  image_id = "51f30641-4062-47ad-ba46-9200db77278b"
}

# Data image gave f974feac-abae-4365-b988-8ec7d1cec10d last year. As SCW images are not tagged, ids are changing with the time.

