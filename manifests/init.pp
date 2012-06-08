# modules/rtorrent/manifests/init.pp - manage rtorrent stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3
#

class rtorrent {
    case $::operatingsystem {
        default: { include rtorrent::base }
    }

    if hiera('use_munin',false) {
        include rtorrent::munin
    }
}
