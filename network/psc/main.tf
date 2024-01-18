# Create internal PSC IP address

# https://cloud.google.com/vpc/docs/configure-private-service-connect-apis#ip-address-requirements
resource "google_compute_address" "psc_internal_ip" {
  name         = var.psc_internal_ip_name
  address_type = "INTERNAL"
  purpose      = "PRIVATE_SERVICE_CONNECT"
  region       = var.region
  project      = var.project_id
  network      = ""
  address      = "10.60.118.2"
}

resource "google_compute_forwarding_rule" "psc_apigee_forwarding_rule" {
  provider                = google-beta
  project                 = var.project_id
  name                    = var.psc_forwarding_rule_name
  target                  = "" # PSC service attachment?
  network                 = ""
  ip_address              = google_compute_global_address.private_service_connect.id
  load_balancing_scheme   = ""
  allow_psc_global_access = true
}