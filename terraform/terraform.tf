terraform {
  backend "s3" {
    bucket = "dockhippie-terraform"
    key    = "github"
    region = "eu-central-1"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.6.0"
    }
  }

  required_version = ">= 1.0"
}

provider "github" {
  owner = "dockhippie"
}
