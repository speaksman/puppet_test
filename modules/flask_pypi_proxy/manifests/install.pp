class flask_pypi_proxy::install { 

  # Install the pypi package

  package { 'flask-pypi-proxy':
    provider => 'pip',
    ensure   => 'installed',
  }

}
