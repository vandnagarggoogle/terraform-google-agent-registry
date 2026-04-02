# terraform-google-agent-registry

## Description
### Tagline
Terraform module for managing Google Cloud Agent Registry

### Detailed
This module was generated from [terraform-google-module-template](https://github.com/terraform-google-modules/terraform-google-module-template/), which by default generates a module that simply creates a GCS bucket. As the module develops, this README should be updated.

The resources/services/activations/deletions that this module will create/trigger are:

- Create a GCS bucket with the provided name

### PreDeploy
To deploy this blueprint you must have an active billing account and billing permissions.

## Architecture
![alt text for diagram](https://www.link-to-architecture-diagram.com)
1. Architecture description step no. 1
2. Architecture description step no. 2
3. Architecture description step no. N

## Documentation
- [Hosting a Static Website](https://cloud.google.com/storage/docs/hosting-static-website)

## Deployment Duration
Configuration: X mins
Deployment: Y mins

## Cost
[Blueprint cost details](https://cloud.google.com/products/calculator?id=02fb0c45-cc29-4567-8cc6-f72ac9024add)

## Usage

Basic usage of this module is as follows:

```hcl
module "agent_registry_service" {
  source     = "vandnagarggoogle/agent-registry/google//modules/agent-registry-service"
  project_id = var.project_id
  location   = "us-central1"
  service_id = "test-service-${var.random_string}"
  interfaces = [
  { "protocol_binding" = "HTTP_JSON", "url" = "https://api.stripe.com" }]
  endpoint_spec = {
    type = "NO_SPEC"
  }
}

```

Functional examples are included in the
[examples](./examples/) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| agent\_spec | The spec of the Agent. Mutually exclusive with mcp\_server\_spec and endpoint\_spec. | <pre>object({<br>    type    = string # NO_SPEC or A2A_AGENT_CARD<br>    content = string # JSON format content<br>  })</pre> | `null` | no |
| description | The description of the service. | `string` | `null` | no |
| display\_name | User-defined display name for the Service (max 63 characters). | `string` | `null` | no |
| endpoint\_spec | The spec of the Endpoint. Mutually exclusive with agent\_spec and mcp\_server\_spec. | <pre>object({<br>    type = string # NO_SPEC<br>  })</pre> | `null` | no |
| interfaces | The connection details for the Service. | <pre>list(object({<br>    url              = string<br>    protocol_binding = string # JSONRPC, GRPC, or HTTP_JSON<br>  }))</pre> | `[]` | no |
| location | The location of the resource. | `string` | n/a | yes |
| mcp\_server\_spec | The spec of the MCP Server. Mutually exclusive with agent\_spec and endpoint\_spec. | <pre>object({<br>    type    = string # NO_SPEC or TOOL_SPEC<br>    content = string # JSON format content<br>  })</pre> | `null` | no |
| project | The project ID to deploy to. | `string` | n/a | yes |
| service\_id | The name of the service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| create\_time | The timestamp when the resource was created. |
| id | The ID of the Agent Registry Service. |
| update\_time | The timestamp when the resource was updated. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Requirements

These sections describe requirements for using this module.

### Software

The following dependencies must be available:

- [Terraform][terraform] v0.13
- [Terraform Provider for GCP][terraform-provider-gcp] plugin v3.0

### Service Account

A service account with the following roles must be used to provision
the resources of this module:

- Storage Admin: `roles/storage.admin`

The [Project Factory module][project-factory-module] and the
[IAM module][iam-module] may be used in combination to provision a
service account with the necessary roles applied.

### APIs

A project with the following APIs enabled must be used to host the
resources of this module:

- Google Cloud Storage JSON API: `storage-api.googleapis.com`

The [Project Factory module][project-factory-module] can be used to
provision a project with the necessary APIs enabled.

## Contributing

Refer to the [contribution guidelines](./CONTRIBUTING.md) for
information on contributing to this module.

[iam-module]: https://registry.terraform.io/modules/terraform-google-modules/iam/google
[project-factory-module]: https://registry.terraform.io/modules/terraform-google-modules/project-factory/google
[terraform-provider-gcp]: https://www.terraform.io/docs/providers/google/index.html
[terraform]: https://www.terraform.io/downloads.html

## Security Disclosures

Please see our [security disclosure process](./SECURITY.md).
