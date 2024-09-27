module "vcsworkflow" {
  source  = "app.terraform.io/tfc-test-pool/wrkflw/vcs"
  version = "0.0.4"
  roles = {
    repository = ["roles/artifactregistry.writer"]
    workspace  = ["roles/iam.workloadIdentityPoolAdmin", "roles/compute.admin"]
  }
  gcp_projects        = { pr = "pryooo", np = "npyooo" }
  repository_name     = "vcs-rrrr"
  repository_template = "tfw-seed-template"
  vcs_ghain           = "ghain-9NW7c1EhRWxYsYs5"
  tfe_project_id      = "prj-BL1UPf9uoMi9mrDG"
  ghe_team_id         = "operator-yooo"
  # tfe_team_id         = ""
  wif = {
    repository = {
      gcp = {
        pr = {
          project_number  = "349260731752"
          pool_id         = "prpoolyooo"
          provider_id     = "gh-provider"
        },
        np = {
          project_number  = "349260731752"
          pool_id         = "nppoolyooo"
          provider_id     = "gh-provider"
        }
      }
    },
    workspace = {
      gcp = {
        pr = {
          project_number  = "349260731752"
          pool_id         = "prpoolyooo"
          provider_id     = "tf-provider"
        },
        np = {
          project_number  = "349260731752"
          pool_id         = "nppoolyooo"
          provider_id     = "tf-provider"
        }
      }
    }
  }
  workload_context = {
    pr = {
      prd = {
        gcp = ["northamerica-northeast2", "northamerica-northeast1", "us-central4"]
      }
    },
    np = {
      stg = {
        gcp = ["northamerica-northeast2"]
      }
    }
  }
  workload_id = "eeee"
  workflow_id = "rrrr"
}