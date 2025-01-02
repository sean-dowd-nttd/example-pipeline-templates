locals {
    pipeline_templates = [
        fileset("${path.module}/${var.pipeline_template_paths}", "*.tftpl"),
    ]
}

resource "template_file" "pipelines" {
    count = length(local.pipeline_templates)

  template = templatefile("${tmpdir}/${data.random_string.clone_name.result}/${var.template_path}")
  vars = {
    var1 = var.value1
    var2 = var.value2
  }
}