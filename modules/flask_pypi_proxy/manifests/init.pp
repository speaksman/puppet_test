class flask_pypi_proxy {

  # This class is designed to install the flask pypi 
  # proxy and all associated dependancies as well as configuring 
  # and starting the instance.

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


