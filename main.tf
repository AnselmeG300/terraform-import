provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}


resource "aws_instance" "declare_the_resource_to_be_imported" {
  ami           = data.aws_instance.resource_to_import.ami
  instance_type = data.aws_instance.resource_to_import.instance_type
  key_name      = data.aws_instance.resource_to_import.key_name
  tags          = data.aws_instance.resource_to_import.tags
}
