#
# Cookbook Name:: fail2ban
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


package "epel-release.noarch" do
	action :install
end

package "fail2ban" do
	action :install
end

service "fail2ban" do
	action [:start, :enable]
end

template "/etc/fail2ban/jail.local" do
	source "jail.conf.erb"
	mode "644"
	owner "root"
	group "root"
	action :create
	notifies :restart, "service[fail2ban]"
end