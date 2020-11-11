module "network" {
  source  = "app.terraform.io/nidhi-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "nidhi-network-1"
  project_id= var.project
  subnets = [
  {
    subnet_name   = "nidhi-subnet-1"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}

