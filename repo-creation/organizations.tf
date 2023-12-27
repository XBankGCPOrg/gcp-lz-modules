locals {
  org_data = yamldecode(file("${path.module}/project_vending.yaml"))
}

# resource "github_membership" "default" {
#   for_each = var.org_member_invitation != null ? var.org_member_invitation : {}
#   username = each.key
#   role     = each.value.role
# }

# resource "github_membership" "default" {
#   username = "narayan-khanna"
#   role     = "admin"
# }

resource "github_repository_collaborator" "default" {
  for_each   = local.org_data.repositories
  repository = github_repository.default[each.key].name
  username   = var.github_username
  permission = "admin"
}
