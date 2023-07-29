resource "google_compute_subnetwork" "private" {
  name                     = "private"
  region                   = var.region
  ip_cidr_range            = "10.0.0.0/18"
  stack_type               = "IPV4_ONLY"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "public" {
  name          = "public"
  region        = var.region
  ip_cidr_range = "10.0.64.0/18"
  stack_type    = "IPV4_ONLY"
  network       = google_compute_network.main.id
}
