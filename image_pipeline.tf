resource "aws_imagebuilder_image_pipeline" "pipeline" {
  image_recipe_arn                 = aws_imagebuilder_image_recipe.recipe.arn
  infrastructure_configuration_arn = aws_imagebuilder_infrastructure_configuration.infra_conf.arn
  name                             = "pipeline"
}
