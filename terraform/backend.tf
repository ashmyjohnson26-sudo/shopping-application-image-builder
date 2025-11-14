terraform {
  backend "s3" {
    bucket = "terraform-backend.ashmyops.fun"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
