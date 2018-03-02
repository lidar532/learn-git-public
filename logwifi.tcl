#!/usr/bin/tclsh

set  f [ open /proc/net/wireless r ]
set of [ open wifi.log a ]
puts $of
while { 1 } {
  set t [ clock format [ clock seconds ] -format {%Y-%m-%d-%H-%M-%S} ]
  set s  [ split [ read $f ] "\w" ] 
  puts -nonewline $of "$t [ lindex $s 2 ]"
  flush $of
  seek $f 0
  after 60000
}

