resource "aws_imagebuilder_distribution_configuration" "example" {
  name = "example"

  distribution {
    region = "us-east-1"
  }
}
