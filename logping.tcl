#!/usr/bin/tclsh

set  f [ open  {|/bin/ping -i60  8.8.8.8} r ]
set of [ open ping.log a ]
puts $of
while { 1 } {
  set t [ clock format [ clock seconds ] -format {%Y-%m-%d-%H-%M-%S} ]
  set slen  [ gets  $f  s  ] 
  puts  $of "$t $s"
  flush $of
  after 100
}

