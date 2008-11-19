= DRb:
== Server:
  require 'drb'
  class TestServer
    def welcome
      "Welcome!"
    end
  end

  server = TestServer.new
  DRb.start_service('druby://localhost:9000',server)
  puts DRb.uri
  DRb.thread.join

== Client:
  require 'drb'
  DRb.start_service()
  obj = DRbObject.new(nil,'druby://localhost:9000')
  puts obj.welcome
