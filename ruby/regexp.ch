= Regexp:
== Modifiers:
    * /i makes the regex match case insensitive.
    * /m makes the dot match newlines. Ruby indeed uses /m, whereas Perl and many other programming languages use /s for "dot matches newlines".
    * /x tells Ruby to ignore whitespace between regex tokens.
    * /o causes any #{...} substitutions in a particular regex literal to be performed just once, the first time it is evaluated. Otherwise, the substitutions will be performed every time the literal generates a Regexp object. 

== Special Variables:
   $~ holds the same MatchData object returned by Regexp.match().
   $& holds the text matched by the whole regular expression.
   $1, $2, etc. hold the text matched by the first, second, and following capturing groups.
   $+ holds the text matched by the highest-numbered capturing group that actually participated in the match.
   $` and $' hold the text in the subject string to the left and to the right of the regex match.

== MatchData:
  md[0] <=> $~
  md[1] <=> $1
  md.pre_match <=> $`
  md.post_match <=> $'
