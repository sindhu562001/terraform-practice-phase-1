resource "google_compute_network" "vpc" {
  name = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_subnet" {
  for_each = var.subnets
  name = each.key
  region = each.value.region
  ip_cidr_range = each.value.ip_cidr_range
  network = google_compute_network.vpc.self_link
}