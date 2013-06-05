# adapted from https://github.com/opscode/omnibus-software/blob/master/config/software/redis.rb
#

name "remote_syslog"
version "1.6.14"

dependency "ruby"
dependency "rubygems"

build do
  gem "install remote_syslog -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  command "rm -rf /opt/remote_syslog/embedded/docs"
  command "rm -rf /opt/remote_syslog/embedded/share/man"
  command "rm -rf /opt/remote_syslog/embedded/share/doc"
  command "rm -rf /opt/remote_syslog/embedded/ssl/man"
  command "rm -rf /opt/remote_syslog/embedded/info"
end
