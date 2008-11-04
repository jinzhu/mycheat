= rpm: |-
   $ rpm -ivh {rpm-file} [{rpm-file}]     Install a package
   $ rpm -Uvh {rpm-file} [{rpm-file}]     Upgrade package
   $ rpm -ev [--nodeps] {package}         Erase/remove an installed package
   $ rpm -qa                              List all installed packages
   $ rpm -qi {package}	                  Show package detail
   $ rpm -qf {/path/to/file}              Show package ownership of file
   $ rpm -qc {package-name}	          Show config files for package
   $ rpm -qcf {/path/to/file}             Show config files for command
   $ rpm -qa --last                       Show recently installed RPMs
   $ rpm -qpR {rpm-file}                  Show package dependencies
   $ rpm -qR {package}
