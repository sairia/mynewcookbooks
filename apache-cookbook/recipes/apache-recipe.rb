#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end
	
file '/var/www/html/index.html' do
  content 'Hello Dear Students!! Fully Automated!! Tested!! Full nd Final!!'
  action :create
end
	
service 'httpd' do
  action [ :enable, :start ]
end

%w(sai hari raj test xyz).each do |p|
  user p do
    action :create
  end
end
