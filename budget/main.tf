terraform {
  required_version = ">= 1.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.7.0"
    }
  }
}
locals {
  project_name     = length(var.budget_config.projects) == 0 ? "All Projects" : var.budget_config.projects[0]
  display_name     = var.budget_config.display_name == null ? "Budget For ${local.project_name}" : var.budget_config.display_name
  all_updates_rule = var.budget_config.alert_pubsub_topic == null && length(var.budget_config.monitoring_notification_channels) == 0 ? [] : ["1"]
  custom_period    = var.budget_config.calendar_period == "CUSTOM" ? [1] : []
  start_date       = length(local.custom_period) != 0 ? split("-", var.budget_config.custom_period_start_date) : null
  end_date         = length(local.custom_period) != 0 ? split("-", var.budget_config.custom_period_end_date) : null
  budget_projects  = var.budget_config.create_budget ? var.budget_config.projects : []



  projects = length(var.budget_config.projects) == 0 ? null : [
    for project in data.google_project.project :
    "projects/${project.number}"
  ]
  services = var.budget_config.services == null ? null : [
    for id in var.budget_config.services :
    "services/${id}"
  ]
}


data "google_project" "project" {
  count      = var.budget_config.create_budget ? length(var.budget_config.projects) : 0
  project_id = element(var.budget_config.projects, count.index)
}


resource "google_billing_budget" "budget" {
  count = var.budget_config.create_budget ? 1 : 0


  billing_account = var.budget_config.billing_account
  display_name    = local.display_name

  budget_filter {
    projects = local.projects
    //projects               = local.budget_projects
    credit_types_treatment = var.budget_config.credit_types_treatment
    services               = local.services
    labels                 = var.budget_config.labels
    calendar_period        = length(local.custom_period) == 0 ? var.budget_config.calendar_period : null

    dynamic "custom_period" {
      for_each = local.custom_period
      content {
        start_date {
          day   = local.start_date[0]
          month = local.start_date[1]
          year  = local.start_date[2]
        }
        end_date {
          day   = local.end_date[0]
          month = local.end_date[1]
          year  = local.end_date[2]
        }
      }
    }
  }


  dynamic "threshold_rules" {
    for_each = var.budget_config.alert_spent_percents
    content {
      threshold_percent = threshold_rules.value
      spend_basis       = var.budget_config.alert_spend_basis
    }
  }

  dynamic "all_updates_rule" {
    for_each = local.all_updates_rule
    content {
      pubsub_topic                     = var.budget_config.alert_pubsub_topic
      monitoring_notification_channels = var.budget_config.monitoring_notification_channels
    }
  }
  amount {
    specified_amount {
      currency_code = var.budget_config.currency_code
      //units = startswith(local.budget_projects[count.index], "prj-s-") ? var.budget_config.budget_amount_sandbox : var.budget_config.budget_amount_default
      units = anytrue([
        for project_name in var.budget_config.projects :
        startswith(project_name, var.budget_config.project_prefix) && var.budget_config.project_prefix != "prj-s"
      ]) ? var.budget_config.budget_amount_sandbox : var.budget_config.budget_amount_default
    }


  }
}

