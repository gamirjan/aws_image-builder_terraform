resource "aws_imagebuilder_image_recipe" "recipe" {
  block_device_mapping {
    device_name = "/dev/xvdb"

    ebs {
      delete_on_termination = true
      volume_size           = 20
      volume_type           = "gp2"
    }
  }

  component {
    component_arn = aws_imagebuilder_component.image_component.arn
  }

  name = "my_recipe"
  parent_image = "arn:aws:imagebuilder:us-east-1:aws:image/ubuntu-server-20-lts-x86/x.x.x"
  version      = "1.0.0"
}
