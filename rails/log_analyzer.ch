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


== RESETTING THE LOG LEVEL WITHIN RAILS CONSOLE
$ ruby script/console production
  logger                                         = Logger.new(STDOUT)
  logger.level                                   = Logger::DEBUG
  RAILS_DEFAULT_LOGGER                           = logger
  ActiveRecord::Base.logger                      = logger
  ActionController::Base.logger                  = logger
  ActiveSupport::Cache::MemCacheStore.logger     = logger
  ApplicationController.allow_forgery_protection = false
  reload!

== MAKING FAKE WEB REQUEST

=== HTTPS
  app.https!

=== Request

  app.get('/my/path')
  app.post('/foo', {"this" => "that", "items" => ["bar", "baz"]})
  app.put('/foo', {"this" => "that", "items" => ["bar", "baz"]})

==== If you want to sent a custom header, you can add an optional third parameter:
  app.post('/foo', {:this => "that", :items => ["bar", "baz"]}, {"X-Do-Something" => "yes"})

==== HTTP status or response headers:
  app.response.body
  app.response.status
  app.response.headers.inspect
