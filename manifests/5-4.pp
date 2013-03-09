# Installs php 5.4.11 and symlinks it as 5.4
#
# Usage:
#
#     include php::5-4
class php::5-4 {
  require php
  require php::5-4-11

  file { "${php::config::root}/versions/5.4":
    ensure  => symlink,
    force   => true,
    target  => "${ruby::root}/versions/5.4.11"
  }
}
