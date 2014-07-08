#
# Cookbook Name:: symfony2
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#intl extension required in symfony 2 projects
package "php5-intl" do
    action :install
end

# This configures locale settings
package "locales" do
  action :install
end

execute "Update locale LANG" do
  command "update-locale LANG=en_US.utf8"
end

execute "Update locale LC_ALL" do
  command "update-locale LC_ALL=en_US.utf8"
end
