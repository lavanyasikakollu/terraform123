resource "aws_instance" "one" {
   ami           = "ami-09a7bbd08886aafdf"
   instance_type = "t2.micro"
   #instance_type = lookup(var.instance_type, terraform.workspace)
 }
resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"

}
