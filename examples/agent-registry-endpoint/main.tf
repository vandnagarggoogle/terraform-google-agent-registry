/**
 * Copyright 2026 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "service_prereq" {
  source     = "../../modules/agent-registry-service"
  project_id = var.project_id
  location   = "us-central1"
  service_id = "test-endpoint-${var.random_string}"
  endpoint_spec = {
    type = "NO_SPEC"
  }
}

module "endpoint_data" {
  source      = "../../modules/agent-registry-endpoint"
  project_id  = var.project_id
  location    = "us-central1"
  endpoint_id = module.service_prereq.service_id
}

output "endpoint_uri" { value = module.endpoint_data.endpoint_id }
