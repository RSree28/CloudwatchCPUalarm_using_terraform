/*Connect to AWS*/
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/roja/.aws/credentials" #path of the aws credentials
  profile                 = "roja" #Name of aws profile in AWS credentials(optional)
}
