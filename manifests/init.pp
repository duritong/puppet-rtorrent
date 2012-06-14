# modules/rtorrent/manifests/init.pp - manage rtorrent stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3
#

class rtorrent ( 
  $manage_munin = false
) {
  case $::operatingsystem {
    default: { include rtorrent::base }
  }

  if $rtorrent::manage_munin {
    include rtorrent::munin
  }
}
