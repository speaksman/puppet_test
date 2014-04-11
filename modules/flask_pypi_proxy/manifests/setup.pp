class flask_pypi_proxy::setup { 

  service { "apache2":
    ensure  => "running",
    enable  => "true",
    require => Package["apache2"],
  }

  file { [ "/tmp", "/tmp/test" ]:
    ensure => "directory",
  }


  file { "/etc/apache2/sites-enabled/flask_pypi_proxy.conf":
    ensure => "directory",
    recurse => "true",
    notify => Service["apache2"],
    mode   => 0440,
    owner  => root,
    group  => root,
    source => "puppet:///modules/flask_pypi_proxy/flask_pypi_proxy.conf",

  }

  file { "/mnt/test/flask_pypi_proxy.wsgi":
    ensure => "directory",
    recurse => "true",
    notify => Service["apache2"],
    mode   => 0440,
    owner  => root,
    group  => root,
    source => "puppet:///modules/flask_pypi_proxy/flask_pypi_proxy.wsgi",

  }
}

