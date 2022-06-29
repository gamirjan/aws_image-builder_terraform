variable "region" {
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  type = list(string)
  default = ["t3.micro"]
}

variable "recipe_name" {
  type = string
  default = "my_recipe"
}

variable "infra_name" {
  type = string
  default = "my_infra"
}

variable "parent_image" {
 type = string
 default = "arn:aws:imagebuilder:us-east-1:aws:image/ubuntu-server-20-lts-x86/x.x.x"
}

variable "image_recipe_version" {
 type = string
 default = "1.0.0"
}

variable "ec2_profile_name_prefix" {
    type = string
    default = "ec2_profile"
}

variable "pipeline_name" {
    type = string
    default = "my_pipeline"
}

variable "packages" {
    type = list(string)
    default = ["sudo apt update -y",
"wget https://d1uj6qtbmh3dt5.cloudfront.net/NICE-GPG-KEY",
"gpg --import NICE-GPG-KEY",
"wget https://d1uj6qtbmh3dt5.cloudfront.net/2022.0/Servers/nice-dcv-2022.0-12760-ubuntu2004-x86_64.tgz",
"wget https://d1uj6qtbmh3dt5.cloudfront.net/nice-dcv-ubuntu2004-x86_64.tgz",
"tar -xvzf nice-dcv-2022.0-12760-ubuntu2004-x86_64.tgz",
"cd nice-dcv-2022.0-12760-ubuntu2004-x86_64",
"sudo apt install ./nice-dcv-server_2022.0.12760-1_amd64.ubuntu2004.deb -y",
"sudo apt install ./nice-dcv-web-viewer_2022.0.12760-1_amd64.ubuntu2004.deb -y",
"sudo usermod -aG video dcv",
"sudo apt install ./nice-xdcv_2022.0.424-1_amd64.ubuntu2004.deb -y",
"sudo apt install ./nice-dcv-gl_2022.0.961-1_amd64.ubuntu2004.deb -y",
"sudo apt install ./nice-dcv-simple-external-authenticator_2022.0.188-1_amd64.ubuntu2004.deb -y",
"sudo apt install nvidia-driver-440 -y",
"sudo apt install docker.io -y",
"sudo snap install docker"]
}

variable "distro_name" {
    type = string
    default = "my_distro"
}

variable "image_test" {
  type = bool
  default = false
}

variable "ami_distribution_configuration_name" {
  type = string
  default = "ami-{{ imagebuilder:buildDate }}"
}

variable "component_name" {
  type = string
  default = "image_component"
}

variable "component_platform" {
  type = string
  default = "Linux"
}

variable "component_version" {
  type = string
  default = "1.0.0"
}

variable "building_phase_name" {
  type = string
  default = "package_installation"
}