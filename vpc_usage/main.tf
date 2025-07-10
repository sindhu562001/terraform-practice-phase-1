provider "google" {
  project     = "red-delight-463218-c6"
  region      = "us-central1"
  credentials = file("F:/terraform-lab/service-key.json")
}

module "vpc" {
  source       = "../modules/vpc"
  network_name = "my-vpc"

  subnets = {
    subnet-vpc-a = {
      region        = "us-central1"
      ip_cidr_range = "10.0.0.0/24"
    },
    subnet-vpc-b = {
      region        = "us-central1"
      ip_cidr_range = "10.0.1.0/24"
    }
  }

}

/*
module "gke_lab" {
  source = "../modules/gke"
  cluster_name = "my-gke-cluster"
  cluster_location = "us-central1"
  initial_node_count = 1
  deletion_protection = false
  network = module.vpc.vpc_self_link
  subnet = module.vpc.subnet_self_link["subnet-vpc-a"]
}
*/