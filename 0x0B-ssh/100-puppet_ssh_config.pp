# Puppet manifest to configure SSH client

# Define SSH client configuration file path
$ssh_config_file = '/etc/ssh/ssh_config'

# Ensure SSH client configuration file exists
file { $ssh_config_file:
  ensure => file,
}

# Declare identity file for SSH client
file_line { 'Declare identity file':
  ensure => present,
  path   => $ssh_config_file,
  line   => 'IdentityFile ~/.ssh/school',
}

# Turn off password authentication for SSH client
file_line { 'Turn off passwd auth':
  ensure => present,
  path   => $ssh_config_file,
  line   => 'PasswordAuthentication no',
}
