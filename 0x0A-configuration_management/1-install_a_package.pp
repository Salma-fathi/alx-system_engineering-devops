#!/usr/bin/pup
# Puppet manifest to install Flask package from pip3
# Explanation: This manifest ensures that Flask package is installed from pip3
# with the specified version.

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}
