module "network" {
  source  = "app.terraform.io/nidhi-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "nidhi-network"
  project_id= "${var.project_id}"
  subnets = [
  {
    subnet_name   = "nidhi-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}

