= Exceptions:
== Handling Exceptions:
  begin
    code...
    code...
  rescue [ parm, ... ] [ => var ] [ then ]
    error handling code... , ...
  else
    no exception code...
  ensure
    always executed code...
  end

  statement [ rescue statement, ...]

== Catch:
  catch ( symbol | string ) do
    block...
  end

  throw( symbol | string [ , obj ] )

  e.g:
    def method(n)
      puts n
      throw :done if n <= 0
      method(n-1)
    end

    catch(:done) do
      method(3)
      puts "Can not reach here!"
    end
