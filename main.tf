resource "cloudflare_zero_trust_device_custom_profile" "zero_trust_device_custom_profiles" {
  for_each = var.zero_trust_device_custom_profiles

  account_id                     = each.value.account_id
  match                          = each.value.match
  name                           = each.value.name
  allow_mode_switch              = each.value.allow_mode_switch
  allow_updates                  = each.value.allow_updates
  allowed_to_leave               = each.value.allowed_to_leave
  auto_connect                   = each.value.auto_connect
  captive_portal                 = each.value.captive_portal
  description                    = each.value.description
  disable_auto_fallback          = each.value.disable_auto_fallback
  dns_search_suffixes            = each.value.dns_search_suffixes
  enabled                        = each.value.enabled
  exclude                        = each.value.exclude
  exclude_office_ips             = each.value.exclude_office_ips
  global_acceleration            = each.value.global_acceleration
  include                        = each.value.include
  lan_allow_minutes              = each.value.lan_allow_minutes
  lan_allow_subnet_size          = each.value.lan_allow_subnet_size
  precedence                     = each.value.precedence
  register_interface_ip_with_dns = each.value.register_interface_ip_with_dns
  sccm_vpn_boundary_support      = each.value.sccm_vpn_boundary_support
  service_mode_v2                = each.value.service_mode_v2
  support_url                    = each.value.support_url
  switch_locked                  = each.value.switch_locked
  tunnel_protocol                = each.value.tunnel_protocol
  virtual_networks               = each.value.virtual_networks
}

