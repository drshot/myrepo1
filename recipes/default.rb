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
