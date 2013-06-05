
name "remote_syslog"
maintainer "CHANGE ME"
homepage "CHANGEME.com"

replaces        "remote_syslog"
install_path    "/opt/remote_syslog"
build_version   Omnibus::BuildVersion.new.semver
build_iteration 1

# creates required build directories
dependency "preparation"

# remote_syslog dependencies/components
# dependency "somedep"

dependency "ruby"
dependency "rubygems"

# version manifest file
dependency "version-manifest"

dependency "remote_syslog"

exclude "\.git*"
exclude "bundler\/git"
