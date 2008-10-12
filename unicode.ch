= unicode: "To make your script cope with different character sets, you can set the $KCODE global (or specify the -K option to the interpreter):

  

  $KCODE='UTF8'

  

  Was originally introduced to signal the Ruby interpreter to go into a certain encoding mode. It's currently (mis)used by several libraries to set the global encoding of text (ie. jcode and activesupport)

  

== Values supported in Ruby1.8 appear to be:

  EUC ('-e', 'e')

  SJIS ('-s', 's')

  UTF8 ('-u', 'u')

  NONE ('-n', 'n')

  

== When manipulating strings, include the 'jcode' library:

  

  require 'jcode'

  

== This will extend the string class to behave in a multi-byte fashion when appropriate, as well as introducing:

  

  \"fish\".mbchar? # Returns the index of the first multibyte character in the string, or nil

  \"cat\".jlength  # The length, in characters rather than bytes, of the string

  

  You can get even more Unicode support by using ActiveSupport.

  

  require 'rubygems' rescue LoadError

  require 'active_support'

  

  $KCODE='UTF8'

  \"Caf\xC3\xA9\".chars.upcase"
