variable "student_id" {
  description = "Din student-ID. Brukes som prefiks på alle ressursnavn, slik at navn ikke kolliderer med andre studenters ressurser i den delte tenanten."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,8}$", var.student_id))
    error_message = "student_id må være 3-8 tegn, kun små bokstaver (a-z) og tall (0-9)."
  }
}

variable "project" {
  description = "Kort prosjektnavn. Brukes sammen med student_id til å bygge ressursnavn."
  type        = string
  default     = "tisip-iac"

  validation {
    condition     = length(var.project) <= 10
    error_message = "project kan være maks 10 tegn."
  }
}

variable "location" {
  description = "Azure-regionen ressursene skal opprettes i. Kun regionene som er godkjent i vår tenant er tillatt."
  type        = string
  default     = "westeurope"

  validation {
    condition = contains(
      ["northeurope", "uksouth", "westeurope", "norwayeast", "norwaywest"],
      var.location
    )
    error_message = "location må være én av: northeurope, uksouth, westeurope, norwayeast, norwaywest."
  }
}
