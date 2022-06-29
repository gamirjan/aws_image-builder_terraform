resource "aws_imagebuilder_image_pipeline" "pipeline" {
  image_recipe_arn                 = aws_imagebuilder_image_recipe.recipe.arn
  infrastructure_configuration_arn = aws_imagebuilder_infrastructure_configuration.infra_conf.arn
  name                             = var.pipeline_name
  image_tests_configuration {
      image_tests_enabled              = var.image_test
  }  
}
