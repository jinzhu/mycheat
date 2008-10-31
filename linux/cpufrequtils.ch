= cpufrequtils:
== cpufreq-info
  Gives general CPU information:
  $ cpufreq-info 
==  cpufreq-set
  Allows setting:
  -d  minimum frequency
  -u  maximum frequency
  -f  specific frequency (userspace governor must be set first)
  -g  governor on a
  -c  specific CPU.

== Example:
  Activate the conservative governor to save a little extra power by letting the CPU stay longer at each frequency step before changing:

  $ sudo cpufreq-set -g conservative

  Set the upper frequency limit to 1.6Ghz:

  $ sudo cpufreq-set -u 1.6Ghz

  Manually set the frequency to a constant 800Mhz (userspace governor):

  $ sudo cpufreq-set -g userspace
  $ sudo cpufreq-set -f 800Mhz
