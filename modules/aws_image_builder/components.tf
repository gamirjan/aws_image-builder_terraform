resource "aws_imagebuilder_component" "image_component" {
  data = yamlencode({
    phases = [{
      name = "build"
      steps = [{
        action = "ExecuteBash"
        inputs = {
          commands = var.packages
        }
        name      = var.building_phase_name
        onFailure = "Continue"
      }]
    }]
    schemaVersion = 1.0
  })
  name     = var.component_name
  platform = var.component_platform
  version  = var.component_version
}
