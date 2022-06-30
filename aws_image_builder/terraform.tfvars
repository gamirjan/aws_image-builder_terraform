region                              = "us-east-1"
instance_type                       = ["t3.micro"]
recipe_name                         = "my_recipe"
parent_image                        = "arn:aws:imagebuilder:us-east-1:aws:image/ubuntu-server-20-lts-x86/x.x.x"
image_recipe_version                = "1.0.0"
ec2_profile_name_prefix             = "ec2_profile"
pipeline_name                       = "my_pipeline"
infra_name                          = "my_infra"
distro_name                         = "my_distro"
image_test                          = false
ami_distribution_configuration_name = "ami-{{ imagebuilder:buildDate }}"
component_name                      = "image_component"
component_platform                  = "Linux"
component_version                   = "1.0.0"
building_phase_name                 = "package_installation"
packages = ["sudo apt update -y",
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

