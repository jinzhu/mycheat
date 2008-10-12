= rack: |-
  == Rackup
  
== hello.ru:
    require 'hello'
  
    use Rack::Reloader
    use Rack::CommonLogger
    use Rack::ShowExceptions
    use Rack::ShowStatus
  
    run HelloApp.new
  
== run server:
    % rackup hello.ru
