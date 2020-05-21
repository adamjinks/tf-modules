locals {
  managed_by  = "Terraform 0.12"
}

resource "aws_route53_zone" "this" {
  name              = var.name
  comment           = var.comment
  delegation_set_id = var.delegation_set_id
  force_destroy     = var.force_destroy

  tags = {
    Name          = var.name
    ProductDomain = var.product_domain
    Environment   = var.environment
    Description   = local.description
    ManagedBy     = local.managed_by
  }
}
