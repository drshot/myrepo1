#jail.local config options
default['fail2ban']['ignoreip'] = '127.0.0.1/8'
default['fail2ban']['findtime'] = 600
default['fail2ban']['bantime'] = 300
default['fail2ban']['maxretry'] = 5
default['fail2ban']['backend'] = 'polling'
default['fail2ban']['email'] = 'root@localhost'
default['fail2ban']['action'] = 'action_'
default['fail2ban']['banaction'] = 'iptables-multiport'
default['fail2ban']['mta'] = 'sendmail'
default['fail2ban']['protocol'] = 'tcp'
default['fail2ban']['chain'] = 'INPUT'


default['fail2ban']['filters'] = {}
default['fail2ban']['auth_log'] = '/var/log/secure'
default['fail2ban']['services'] = {
'ssh' => {
'enabled' => 'true',
'port' => 'ssh',
'filter' => 'sshd',
'logpath' => node['fail2ban']['auth_log'],
'maxretry' => '6'
}
}
default['fail2ban']['services']['ssh-iptables'] = {
'enabled' => false
}

