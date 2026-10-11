variable "dataplex_datascan_iam_members" {
  description = <<EOT
Map of dataplex_datascan_iam_members, attributes below
Required:
    - data_scan_id
    - member
    - role
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    data_scan_id = string
    member       = string
    role         = string
    location     = optional(string)
    project      = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

