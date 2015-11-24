#
# Cookbook Name:: fail2ban
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


execute "get_fail2ban" do
	command "rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm"
end

package "fail2ban" do
	action :install
end

service "fail2ban" do
	action [:start, :enable]
end

=begin
execute "copy_config" do
	command "cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local"
end
=end

template "/etc/fail2ban/jail.local" do
	source "jail.conf.erb"
	mode "644"
	owner "root"
	group "root"
	notifies :restart, "service[fail2ban]"
end



