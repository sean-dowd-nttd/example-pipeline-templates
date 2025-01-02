variable "pipeline_type" {
  description = "The type of pipeline to create"
  type        = string
  default = "aws"
  
}

variable "pipeline_template_paths" {
  description = "The paths to the pipeline templates"
  type        = list(string)
  default = []
}