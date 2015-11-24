#jail.local config options
default['fail2ban']['ignoreip'] = ['127.0.0.1/8', '192.168.0.33']
default['fail2ban']['maxretry'] = 3
default['fail2ban']['bantime'] = 900


default['fail2ban']['services'] = {
'ssh' => {
'enabled' => 'true',
'port' => 'ssh',
'filter' => 'sshd',
'logpath' => node['fail2ban']['auth_log'],
'maxretry' => '6'
}
}
