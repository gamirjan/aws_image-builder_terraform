module "my_module" {
  source = "../modules/aws_image_builder"

  region                              = var.region
  instance_type                       = var.instance_type
  recipe_name                         = var.recipe_name
  parent_image                        = var.parent_image
  image_recipe_version                = var.image_recipe_version
  ec2_profile_name_prefix             = var.ec2_profile_name_prefix
  pipeline_name                       = var.pipeline_name
  packages                            = var.packages
  distro_name                         = var.distro_name
  infra_name                          = var.infra_name
  image_test                          = var.image_test
  ami_distribution_configuration_name = var.ami_distribution_configuration_name
  component_name                      = var.component_name
  component_platform                  = var.component_platform
  component_version                   = var.component_version
  building_phase_name                 = var.building_phase_name
}