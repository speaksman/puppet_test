class flask_pypi_proxy::install { 

     package { 'flask-pypi-proxy':
       provider => 'pip',
       ensure   => 'installed',
     }

}
