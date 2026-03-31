/**
 * Copyright 2021 Google LLC
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

output "agent_display_name" {
  description = "The display name of the Agent."
  value       = data.google_agent_registry_agent.default.display_name
}

output "agent_framework" {
  description = "The OSS agent framework used to develop the agent."
  value       = data.google_agent_registry_agent.default.framework
}

output "agent_protocols" {
  description = "The connection details and interfaces for the Agent."
  value       = data.google_agent_registry_agent.default.protocols
}

output "agent_skills" {
  description = "The list of skills and capabilities defined for the Agent."
  value       = data.google_agent_registry_agent.default.skills
}

output "agent_version" {
  description = "The version of the Agent."
  value       = data.google_agent_registry_agent.default.version
}

output "last_updated" {
  description = "The last time the agent metadata was updated."
  value       = data.google_agent_registry_agent.default.update_time
}

output "agent_id"{
  description = "The agent id."
  value       = data.google_agent_registry_agent.default.agent_id
}