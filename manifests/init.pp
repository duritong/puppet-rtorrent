# modules/rtorrent/manifests/init.pp - manage rtorrent stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3
#

class rtorrent {
    case $operatingsystem {
        default: { include rtorrent::base }
    } 

    if $use_munin {
        include rtorrent::munin
    }
}

class rtorrent::base {
    package { 'rtorrent':
        ensure => present,
    }    
}
