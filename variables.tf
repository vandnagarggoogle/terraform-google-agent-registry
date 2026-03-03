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

variable "project" {
  description = "The project ID to deploy to."
  type        = string
}

variable "location" {
  description = "The location of the resource."
  type        = string
}

variable "service_id" {
  description = "The name of the service."
  type        = string
}

variable "display_name" {
  description = "User-defined display name for the Service (max 63 characters)."
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the service."
  type        = string
  default     = null
}

variable "interfaces" {
  description = "The connection details for the Service."
  type = list(object({
    url              = string
    protocol_binding = string # JSONRPC, GRPC, or HTTP_JSON
  }))
  default = []
}

variable "agent_spec" {
  description = "The spec of the Agent. Mutually exclusive with mcp_server_spec and endpoint_spec."
  type = object({
    type    = string # NO_SPEC or A2A_AGENT_CARD
    content = string # JSON format content
  })
  default = null
}

variable "mcp_server_spec" {
  description = "The spec of the MCP Server. Mutually exclusive with agent_spec and endpoint_spec."
  type = object({
    type    = string # NO_SPEC or TOOL_SPEC
    content = string # JSON format content
  })
  default = null
}

variable "endpoint_spec" {
  description = "The spec of the Endpoint. Mutually exclusive with agent_spec and mcp_server_spec."
  type = object({
    type = string # NO_SPEC
  })
  default = null
}
