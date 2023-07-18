locals {
  tags = merge(var.tags, { environment=var.environment , project_name=var.project_name, costcode=var.costcode })
}