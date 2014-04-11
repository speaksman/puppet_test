class flask_pypi_proxy::setup { 
  
  # This class is designed to setup the flask pipy proxy service
  # by installing all the necessary files and creating the necessary directories

  service { "apache2":
    ensure  => "running",
    enable  => "true",
    require => Package["apache2"],
  }

  # Ensure that directories get created

  file { [ "/tmp", "/tmp/test" ]:
    ensure => "directory",
  }

  file { "/etc/apache2/sites-enabled/flask_pypi_proxy.conf":
    notify => Service["apache2"],
    mode   => 0440,
    owner  => root,
    group  => root,
    source => "puppet:///modules/flask_pypi_proxy/flask_pypi_proxy.conf",

  }

  file { "/mnt/test/flask_pypi_proxy.wsgi":
    notify => Service["apache2"],
    mode   => 0440,
    owner  => root,
    group  => root,
    source => "puppet:///modules/flask_pypi_proxy/flask_pypi_proxy.wsgi",

  }
}

