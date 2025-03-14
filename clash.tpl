port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893
allow-lan: false
mode: rule
log-level: info
ipv6: false
external-controller: 0.0.0.0:9090
clash-for-android:
  append-system-dns: false
profile:
  # open tracing exporter API
  tracing: true
#【Meta专属】使用geoip.dat数据库(默认：false使用mmdb数据库)
geodata-mode: false
#自定义 geodata url
geox-url:
  geoip: "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geoip.dat"
  geosite: "https://cdn.jsdelivr.net/gh/Loyalsoldier/v2ray-rules-dat@release/geosite.dat"
  mmdb: "https://github.com/Hackl0us/GeoIP2-CN/raw/release/Country.mmdb"
experimental:
  sniff-tls-sni: true
dns:
  enable: false
  listen: 127.0.0.1:8853
  ipv6: true
  enhanced-mode: fake-ip
#   default-nameserver:
#     - 199.85.126.10
#     - 4.2.2.1
#     - 223.5.5.5
#     - 119.29.29.29
#   #fake-ip-range: 198.10.0.1/16
#   nameserver:
#     - https://doh.360.cn
#     - https://doh.pub/dns-query
#     - https://dns.alidns.com/dns-query
#   fallback:
#     - https://dns.google/dns-query
#     - https://1.1.1.1/dns-query
#     - https://dns.adguard.com/dns-query
  fake-ip-filter:
    - "*.lan"
    - "*.localdomain"
    - "*.example"
    - "*.invalid"
    - "*.localhost"
    - "*.test"
    - "*.local"
    - "*.home.arpa"
         #放行NTP服务"
    - "time.*.com"
    - "time.*.gov"
    - "time.*.edu.cn"
    - "time.*.apple.com"
    - "time1.*.com"
    - "time2.*.com"
    - "time3.*.com"
    - "time4.*.com"
    - "time5.*.com"
    - "time6.*.com"
    - "time7.*.com"
    - "ntp.*.com"
    - "ntp1.*.com"
    - "ntp2.*.com"
    - "ntp3.*.com"
    - "ntp4.*.com"
    - "ntp5.*.com"
    - "ntp6.*.com"
    - "ntp7.*.com"
    - "*.time.edu.cn"
    - "*.ntp.org.cn"
    - "+.pool.ntp.org"
    - "time1.cloud.tencent.com"
         #放行网易云音乐"
    - "music.163.com"
    - "*.music.163.com"
    - "*.126.net"
         #百度音乐"
    - "musicapi.taihe.com"
    - "music.taihe.com"
         #酷狗音乐"
    - "songsearch.kugou.com"
    - "trackercdn.kugou.com"
         #酷我音乐"
    - "*.kuwo.cn"
         #JOOX音乐"
    - "api-jooxtt.sanook.com"
    - "api.joox.com"
    - "joox.com"
         #QQ音乐"
    - "y.qq.com"
    - "*.y.qq.com"
    - "streamoc.music.tc.qq.com"
    - "mobileoc.music.tc.qq.com"
    - "isure.stream.qqmusic.qq.com"
    - "dl.stream.qqmusic.qq.com"
    - "aqqmusic.tc.qq.com"
    - "amobile.music.tc.qq.com"
         #虾米音乐"
    - "*.xiami.com"
         #咪咕音乐"
    - "*.music.migu.cn"
    - "music.migu.cn"
         #win10本地连接检测"
    - "+.msftconnecttest.com"
    - "+.msftncsi.com"
    - "msftconnecttest.com"
    - "msftncsi.com"
         #QQ快捷登录"
    - "localhost.ptlogin2.qq.com"
    - "localhost.sec.qq.com"
         #Game"
         #Nintendo Switch"
    - "+.srv.nintendo.net"
         #Sony PlayStation"
    - "+.stun.playstation.net"
         #Microsoft Xbox"
    - "xbox.*.microsoft.com"
    - "xnotify.xboxlive.com"
    - "+.ipv6.microsoft.com"
         #Wotgame"
    - "+.battlenet.com.cn"
    - "+.wotgame.cn"
    - "+.wggames.cn"
    - "+.wowsgame.cn"
    - "+.wargaming.net"
         #Golang"
    - "proxy.golang.org"
         #STUN"
    - "stun.*.*"
    - "stun.*.*.*"
    - "+.stun.*.*"
    - "+.stun.*.*.*"
    - "+.stun.*.*.*.*"
         #Linksys Router"
    - "heartbeat.belkin.com"
    - "*.linksys.com"
    - "*.linksyssmartwifi.com"
         #ASUS Router"
    - "*.router.asus.com"
         #Apple Software Update Service"
    - "mesu.apple.com"
    - "swscan.apple.com"
    - "swquery.apple.com"
    - "swdownload.apple.com"
    - "swcdn.apple.com"
    - "swdist.apple.com"
         #Google"
    - "lens.l.google.com"
    - "stun.l.google.com"
         #Netflix"
    #- "+.nflxvideo.net"
         #FinalFantasy XIV Worldwide Server & CN Server"
    - "*.square-enix.com"
    - "*.finalfantasyxiv.com"
    - "*.ffxiv.com"
    - "*.ff14.sdo.com"
    - "ff.dorado.sdo.com"
         #Bilibili"
    - "*.mcdn.bilivideo.cn"
         #Disney Plus"
    - "+.media.dssott.com"
    - "+.pvp.net"
  fallback-filter:
    geoip: true
    geoip-code: CN
    ipcidr:
      - 240.0.0.0/4
      - 0.0.0.0/32
      - 127.0.0.1/32
    domain:
      - +.facebook.com 
      - +.twitter.com 
      - +.google.com 
      - +.googleapis.com 
      - +.google.cn 
      #- +.googleapis.cn 
      - +.xn--ngstr-lra8j.com 
      - +.googlevideo.com 
      - +.gvt1.com 
      - +.gmail.com 
      - +.youtube.com 
      - +.youtu.be 
      - +.gvt0.com 
      - +.gvt2.com 
      - +.gvt3.com 
      - +.gstatic.com 
      - +.265.com 
      - +.2mdn.net 
      - +.app-measurement.com 
      - +.c.admob.com 
      - +.clickserve.dartsearch.net
      - +.crl.pki.goog 
      - +.doubleclick.net 
      - +.firebase-settings.crashlytics.com 
      - +.google-analytics.com 
      - +.googleadservices.com 
      - +.googleanalytics.com 
      - +.googleoptimize.com 
      - +.googlesyndication.com 
      - +.googletagmanager.com 
      - +.googletagservices.com
{% if local.clash.new_field_name == "true" %}
proxies: ~
proxy-groups: ~
rules: ~
{% else %}
Proxy: ~
Proxy Group: ~
Rule: ~
{% endif %}
