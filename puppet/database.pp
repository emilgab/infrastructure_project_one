class { '::mysql::server':
  root_password    => 'supergoodpassword',
  override_options => {
    mysqld         => {
      log-bin      => '/var/log/mysql/mysql-bin.log',
      server_id    => 0
    }
  },
}
