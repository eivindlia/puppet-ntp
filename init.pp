class ntp(
  String $package_name        = $ntp::params::package_name,
  String $package_ensure      = $ntp::params::package_ensure,
  String $config_name         = $ntp::params::config_name,
  String $config_file_mode    = $ntp::params::config_file_mode,
  Array[String] $servers      = $ntp::params::servers,
  String $service_ensure      = $ntp::service_ensure,
  String $service_name        = $ntp::params::service_name,
  Boolean $service_enable     = $ntp::params::servers_enable,
  Boolean $service_hasrestart = $ntp::params::service_hasrestart,
  Boolean $service_hasstatus  = $ntp::params::hasstatus,
) inherits ::ntp::params {
  class { '::ntp::install': }
  -> class { '::ntp::config': }
  ~> class { '::ntp::service': }


}
