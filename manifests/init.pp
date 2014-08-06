class { 'rbenv':
  install_dir => '/opt/rbenv',
  latest      => true
}

rbenv::plugin { 'sstephenson/ruby-build': }
rbenv::build { '2.1.1': global => true }

package { ["sqlite3", "libsqlite3-dev"] : ensure => present }

file { "/home/vagrant/bundle" :
  ensure => directory
}