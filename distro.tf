resource "aws_imagebuilder_distribution_configuration" "distro_conf" {
  name = "local-distribution"

  distribution {
    ami_distribution_configuration {
      name = "example-{{ imagebuilder:buildDate }}"
    }
    region = "us-east-1"
  }
}
