resource "aws_imagebuilder_image" "ubuntu" {
  distribution_configuration_arn   = aws_imagebuilder_distribution_configuration.distro_conf.arn
  image_recipe_arn                 = aws_imagebuilder_image_recipe.recipe.arn
  infrastructure_configuration_arn = aws_imagebuilder_infrastructure_configuration.infra_conf.arn
}
