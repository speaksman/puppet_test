class apache::install {

     # install the apache binaries

     package { 'apache2':
       provider => 'apt',
       ensure   => 'installed',
     }

     package { 'libapache2-mod-wsgi':
       provider => 'apt',
       ensure   => 'installed',
     }
    
}

