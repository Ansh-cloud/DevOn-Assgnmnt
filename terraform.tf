terraform {
  backend "s3" {
    
    bucket         = "managingmystate"
    key            = "anshul/s3/terraform.tfstate"
    region         = "ap-south-1"
  
    dynamodb_table = "lockingmystate"
    encrypt        = true
  }
}

