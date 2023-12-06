/*
This output block allows users of this Terraform module to retrieve and use the name
of the created budget elsewhere in their infrastructure or as part of the output
when the Terraform configuration is applied. 
The value exposed through this output variable provides a structured format
representing the resource name of the budget within the associated billing account in Google Cloud.
*/

output "name" {
  description = "Resource name of the budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}.`"
  value       = length(google_billing_budget.budget) > 0 ? google_billing_budget.budget[0].name : ""
}
output "budget_projects_value" {
  value = local.budget_projects
}
