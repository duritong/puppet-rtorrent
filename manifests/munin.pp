# manifests/munin.pp

# this class is just to deploy the plugins
# and give a basic idea of how they could
# be configured.
# but the plugins should be configured by user

class rtorrent::munin {

     $rtorrent_munin_config = "user \$the_running_user\nenv.src socket\n env.socket /path/to/the/socket"
     munin::plugin::deploy { 
        'rtom_mem':
            ensure => absent,
            config => $rtorrent_munin_config,
            source => 'rtorrent/munin/rtom_mem';
        'rtom_peers':
            ensure => absent,
            config => $rtorrent_munin_config,
            source => 'rtorrent/munin/rtom_peers';
        'rtom_spdd':
            ensure => absent,
            config => $rtorrent_munin_config,
            source => 'rtorrent/munin/rtom_spdd';
        'rtom_vol':
            ensure => absent,
            config => $rtorrent_munin_config,
            source => 'rtorrent/munin/rtom_vol';
    }
}
