= Rails Request log analyzer:
== wvanbergen-request-log-analyzer
  gem sources -a http://gems.github.com
  sudo gem install wvanbergen-request-log-analyzer

  $ request-log-analyzer /var/log/my_app.log

== Get IP count
  $ cat production.log | grep "^Processing" | awk '{print $4}' | uniq | wc -l

== 每个IP的访问次数
  $ cat production.log | grep "^Processing" | awk '{print $4}' | uniq -c

== 得到网站所有访问数量
  $ cat production.log | grep "^Processing" |wc |awk '{print $1}'

== 统计每个页面的各自访问次数
  $ cat production.log |grep "200 OK" | awk '{print $17}' | sort | uniq -c 
