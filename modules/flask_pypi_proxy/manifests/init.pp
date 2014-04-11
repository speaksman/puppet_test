class flask_pypi_proxy {

  include python::install
  include flask_pypi_proxy::install
  include apache::install
  include flask_pypi_proxy::setup

  # Dependencies

  Class['python::install']           ->
  Class['flask_pypi_proxy::install'] ->
  Class['apache::install']           ->
  Class['flask_pypi_proxy::setup']

}


