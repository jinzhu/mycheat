= Exceptions:
== Rescue:
  begin
    ......
  rescue
    ......
    retry
  else
    ......
  ensure
    ......
  end

== Catch:
  def method(n)
    puts n
    throw :done if n <= 0
    method(n-1)
  end

  catch(:done) do
    method(3)
    puts "Can not reach here!"
  end
