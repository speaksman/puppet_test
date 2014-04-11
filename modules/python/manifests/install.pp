class python::install { 

     package { 'python':
       provider => 'apt',
       ensure  => 'installed',
     }
    
     package { 'python-setuptools':
       provider => 'apt',
       ensure  => 'installed',
     }

     package { 'python-dev':
       provider => 'apt',
       ensure  => 'installed',
     }

     package { 'libxml2-dev':
       provider => 'apt',
       ensure  => 'installed',
     }

     package { 'libxslt-dev':
       provider => 'apt',
       ensure  => 'installed',
     }

     exec { 'install_pip':
       command  => "/usr/bin/easy_install pip",
     }

}
