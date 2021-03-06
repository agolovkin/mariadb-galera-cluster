provider "google" {
  credentials = "${file("account.json")}"
  account_file = "" # Deprecated, use credentials above
  project = ""
  region = ""
}

module "gce-dc" {
  source = "./providers/gce"
  datacenter = "gce-dc"
  cluster_type = "n1-standard-1"
  cluster_size = "3"
  network_ipv4 = "10.0.0.0/16"
  name = "dbcluster"
  short_name = "db"
  region = ""
  zone = ""
}
