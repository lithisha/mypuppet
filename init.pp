class ntpmodule {

#Declare Variables

$timeserver = "server 0.centos.pool.ntp.org iburst\n"

#Install NTP Package

package {'chrony':

	ensure => "installed",


}

#Configure NTP

file {'/etc/chrony.conf':

	ensure => "present",
	content => "$timeserver",

}

# Start NTP service

service {'chronyd':
	
	ensure => "running",
	enable => true,


}



}
