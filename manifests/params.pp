# Private
class activemq::params {
  $version                       = 'present'
  $package                       = 'activemq'
  $ensure                        = 'running'
  $instance                      = 'activemq'
  $server_config                 = 'UNSET'
  $server_config_show_diff       = 'UNSET'
  $mq_broker_name                = $::fqdn
  $mq_admin_username             = 'admin'
  $mq_admin_password             = 'admin'
  $mq_cluster_username           = 'amq'
  $mq_cluster_password           = 'secret'
  $mq_cluster_brokers            = []
  $mq_broker_tcp_port            = '61616'
  $mq_broker_stomp_port          = '61612'
  $mq_broker_jmx_port            = '1099'
  $mq_broker_admin_port          = '8161'
  $mq_broker_memory_usage_limit  = '20mb'
  $mq_broker_store_usage_limit   = '24gb'
  $mq_broker_temp_usage_limit    = '100mb'

  # Debian does not include the webconsole
  case $::osfamily {
    'Debian': {
      $webconsole = false
    }
    default: {
      $webconsole = true
    }
  }
}
