/**
 * Copyright 2018 Google LLC
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

variable "project_id" {
  description = "The project ID to host the cluster in"
  default = "vanguard-20200519"
}

variable "cluster_name_suffix" {
  description = "A suffix to append to the default cluster name"
  default     = ""
}

variable "region" {
  description = "The region to host the cluster in"
  default = "asia-south1"
}

variable "zones" {
  type        = list(string)
  description = "The zone to host the cluster in (required if is a zonal cluster)"
  default = ["asia-south1-c"]
}

variable "network" {
  description = "The VPC network to host the cluster in"
 default = "default"
}

variable "subnetwork" {
  description = "The subnetwork to host the cluster in"
default = "default"
}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
default="asia-south1-c-ip-pods"
}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
default="asia-south1-c-ip-services"
}

variable "compute_engine_service_account" {
  description = "Service account to associate to the nodes in the cluster"
}

