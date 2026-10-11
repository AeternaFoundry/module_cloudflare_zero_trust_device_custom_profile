variable "zero_trust_device_custom_profiles" {
  description = <<EOT
Map of zero_trust_device_custom_profiles, attributes below
Required:
    - account_id
    - match
    - name
Optional:
    - allow_mode_switch
    - allow_updates
    - allowed_to_leave
    - auto_connect
    - captive_portal
    - description
    - disable_auto_fallback
    - dns_search_suffixes
    - enabled
    - exclude
    - exclude_office_ips
    - global_acceleration
    - include
    - lan_allow_minutes
    - lan_allow_subnet_size
    - precedence
    - register_interface_ip_with_dns
    - sccm_vpn_boundary_support
    - service_mode_v2
    - support_url
    - switch_locked
    - tunnel_protocol
    - virtual_networks
EOT

  type = map(object({
    account_id            = string
    match                 = string
    name                  = string
    allow_mode_switch     = optional(bool)
    allow_updates         = optional(bool)
    allowed_to_leave      = optional(bool)
    auto_connect          = optional(number)
    captive_portal        = optional(number)
    description           = optional(string)
    disable_auto_fallback = optional(bool)
    dns_search_suffixes = optional(list(object({
      description = optional(string)
      suffix      = string
    })))
    enabled = optional(bool)
    exclude = optional(list(object({
      address     = optional(string)
      description = optional(string)
      host        = optional(string)
    })))
    exclude_office_ips = optional(bool)
    global_acceleration = optional(object({
      api_endpoints       = list(string)
      enabled             = bool
      masque_endpoints    = list(string)
      wireguard_endpoints = list(string)
    }))
    include = optional(list(object({
      address     = optional(string)
      description = optional(string)
      host        = optional(string)
    })))
    lan_allow_minutes              = optional(number)
    lan_allow_subnet_size          = optional(number)
    precedence                     = optional(number)
    register_interface_ip_with_dns = optional(bool)
    sccm_vpn_boundary_support      = optional(bool)
    service_mode_v2 = optional(object({
      mode = optional(string)
      port = optional(number)
    }))
    support_url     = optional(string)
    switch_locked   = optional(bool)
    tunnel_protocol = optional(string)
    virtual_networks = optional(object({
      allowed = list(string)
      default = string
    }))
  }))
}

