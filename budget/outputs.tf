output "name" {
  description = "Resource name of the budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}.`"
  value       = length(google_billing_budget.budget) > 0 ? google_billing_budget.budget[0].name : ""
}

output "budget_projects_value" {
  value = local.budget_projects
}
