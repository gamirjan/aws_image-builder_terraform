resource "aws_imagebuilder_distribution_configuration" "distro_conf" {
  name = var.distro_name

  distribution {
    ami_distribution_configuration {
      name = var.ami_distribution_configuration_name
    }
    region = var.region
  }
}
