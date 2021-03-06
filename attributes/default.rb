
default['owncloud']['version'] = 'latest'
default['owncloud']['download_url'] = "http://download.owncloud.org/community/owncloud-#{node['owncloud']['version']}.tar.bz2"

default['owncloud']['deploy_from_git'] = false
default['owncloud']['git_repo'] = 'https://github.com/owncloud/core.git'
default['owncloud']['git_ref'] = nil

default['owncloud']['www_dir'] = value_for_platform_family(
  ['rhel', 'fedora'] => '/var/www/html',
  'default' => '/var/www'
)
default['owncloud']['dir'] = "#{node['owncloud']['www_dir']}/owncloud"
default['owncloud']['data_dir'] = "#{node['owncloud']['dir']}/data"
default['owncloud']['server_name'] = node['fqdn'] || 'owncloud.local'
default['owncloud']['server_aliases'] = []
default['owncloud']['install_postfix'] = true
default['owncloud']['web_server'] = 'apache'
default['owncloud']['php-fpm']['pool'] = 'owncloud'
default['owncloud']['max_upload_size'] = '512M'
default['owncloud']['sendfile'] = node['virtualization']['system'].eql?('vbox') ? false : true
default['owncloud']['skip_permissions'] = false

default['owncloud']['ssl'] = true
default['owncloud']['ssl_key']['source'] = 'self-signed'
default['owncloud']['ssl_key']['bag'] = nil
default['owncloud']['ssl_key']['item'] = nil
default['owncloud']['ssl_key']['item_key'] = nil
default['owncloud']['ssl_key']['encrypted'] = false
default['owncloud']['ssl_key']['secret_file'] = nil
default['owncloud']['ssl_key']['path'] = nil
default['owncloud']['ssl_key']['content'] = nil
default['owncloud']['ssl_cert']['source'] = 'self-signed'
default['owncloud']['ssl_cert']['bag'] = nil
default['owncloud']['ssl_cert']['item'] = nil
default['owncloud']['ssl_cert']['item_key'] = nil
default['owncloud']['ssl_cert']['encrypted'] = false
default['owncloud']['ssl_cert']['secret_file'] = nil
default['owncloud']['ssl_cert']['path'] = nil
default['owncloud']['ssl_cert']['content'] = nil

default['owncloud']['admin']['user'] = 'admin'
default['owncloud']['admin']['pass'] = nil

default['owncloud']['config']['dbtype'] = 'mysql'
default['owncloud']['config']['dbname'] = 'owncloud'
default['owncloud']['config']['dbuser'] = 'owncloud'
default['owncloud']['config']['dbpassword'] = nil
default['owncloud']['config']['dbhost'] = '127.0.0.1'
default['owncloud']['config']['dbport'] = nil
default['owncloud']['config']['dbtableprefix'] = ''

default['owncloud']['config']['mail_smtpmode'] = 'sendmail'
default['owncloud']['config']['mail_smtphost'] = '127.0.0.1'
default['owncloud']['config']['mail_smtpport'] = 25
default['owncloud']['config']['mail_smtptimeout'] = 10
default['owncloud']['config']['mail_smtpsecure'] = ''
default['owncloud']['config']['mail_smtpauth'] = false
default['owncloud']['config']['mail_smtpauthtype'] = 'LOGIN'
default['owncloud']['config']['mail_smtpname'] = ''
default['owncloud']['config']['mail_smtppassword'] = ''

default['owncloud']['cron']['enabled'] = true
default['owncloud']['cron']['min'] = '*/15'
default['owncloud']['cron']['day'] = '*'
default['owncloud']['cron']['hour'] = '*'
default['owncloud']['cron']['month'] = '*'
default['owncloud']['cron']['weekday'] = '*'

default['owncloud']['database']['data_dir'] = '/var/lib/mysql'
default['owncloud']['database']['instance'] = 'default'
default['owncloud']['database']['rootpassword'] = nil
default['owncloud']['database']['version'] = nil
