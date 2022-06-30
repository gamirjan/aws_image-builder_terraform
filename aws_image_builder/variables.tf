variable "region" {
  type = string
}

variable "instance_type" {
  type = list(string)
}

variable "recipe_name" {
  type = string
}

variable "parent_image" {
  type = string
}

variable "image_recipe_version" {
  type = string
}

variable "ec2_profile_name_prefix" {
  type = string
}

variable "pipeline_name" {
  type = string
}

variable "infra_name" {
  type = string
}

variable "packages" {
  type = list(string)
}

variable "distro_name" {
  type = string
}

variable "image_test" {
  type = bool
}

variable "ami_distribution_configuration_name" {
  type = string
}

variable "component_name" {
  type    = string
}

variable "component_platform" {
  type    = string
}

variable "component_version" {
  type    = string
}

variable "building_phase_name" {
  type    = string
}