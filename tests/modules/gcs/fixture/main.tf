/**
 * Copyright 2020 Google LLC
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

module "test" {
  source             = "../../../../modules/gcs"
  project_id         = "my-project"
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy      = var.force_destroy
  iam_members        = var.iam_members
  iam_roles          = var.iam_roles
  labels             = var.labels
  logging_config     = var.logging_config
  names              = ["bucket-a", "bucket-b"]
  prefix             = var.prefix
  retention_policies = var.retention_policies
  versioning         = var.versioning
}
