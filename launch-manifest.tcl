# Hosted by https://fdo.rocketlaunch.live/api
# filename: launch-manifest.tcl
# Source: https://tools.eggdrop.fr/privatebin/?59927e46c15dadce#9GE116Sqyogqu3CQuTKV6fo6d3gRHk4SV6R9U8oA9bth
# Aurtor: <wonderer> & <CrazyCat>
# Massive thanks & Credits: <CrazyCat> on #eggdrop libera.chat
#
# additional features:
# [29/01/2022 16:46] <CrazyCat> If you want the vehicle, you have to use: set vehicle [dict get $res vehicle name]
# [29/01/2022 16:47] <CrazyCat> for location: set location [dict get $res pad location name]
# [29/01/2022 16:47] <CrazyCat> (you'll have to analyse the json to find the good ways to you datas)
#

namespace eval CTlaunch {

###

        variable trig "!next"

        variable flag "-|-"

###

        package require tls
        package require http

        bind PUB $flag $trig [namespace current]::current:launch

        proc current:launch {nick host hand chan text} {

                variable url "https://fdo.rocketlaunch.live/json/launches/next/5"
                ::http::register https 443 [list ::tls::socket -autoservername true]
                ::http::config -useragent "Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0"
                variable data [::http::data [::http::geturl $url -timeout 10000]]
                ::http::unregister https
                variable jsonx [CTlaunch::json2dict $data]
                foreach res [dict get $jsonx result] {
                        set vehicle [dict get $res vehicle name]
                        set provider [dict get $res provider name]
                        set location [dict get $res pad location name]
                        set pad [dict get $res pad name]
                        set desc [dict get $res launch_description]
                        set qtext [dict get $res quicktext]
                        set weather [join [split [dict get $res weather_summary] "\n"] " - "]
                        putserv "NOTICE $nick :\[\00307Next 5 Launches\003\] \002$provider\002 - \002$vehicle\002 |⚡| \002$pad\002 - \002$location\002 |⚡️| $desc"
			# putserv "NOTICE $nick :Sent: \037$chanservcmd\037 to ChanServ"
                        #putserv "PRIVMSG $chan :\[\00307Next 5 Launches\003\] \002$provider\002 - \002$vehicle\002 |⚡| \002$pad\002 - \002$location\002 |⚡️| $desc"
                }
        }

        proc json2dict {JSONtext} {
                string range [string trim [string trimleft [string map {\t {} \n {} \r {} , { } : { } \[ \{ \] \}} $JSONtext] {\uFEFF}]] 1 end-1
        }

}
