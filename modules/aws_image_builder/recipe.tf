resource "aws_imagebuilder_image_recipe" "recipe" {
  component {
    component_arn = aws_imagebuilder_component.image_component.arn
  }

  name         = var.recipe_name
  parent_image = var.parent_image
  version      = var.image_recipe_version
}
