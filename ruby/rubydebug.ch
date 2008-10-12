= rubydebug: "* b[reak]
  list breakpoints

  * b[reak] [file|class:]LINE|METHOD [if expr]

  * b[reak] [class.]LINE|METHOD [if expr]
  set breakpoint to some position, optionally if expr == true

  * cat[ch]
  show catchpoint

  * cat[ch] EXCEPTION
  set catchpoint to an exception

  * disp[lay] EXPRESSION add expression into display expression list

  * undisp[lay][ nnn]
  delete one particular or all display expressions if no expression number given

  * del[ete][ nnn]
  delete some or all breakpoints (get the number using \xE2\x80\x9Cbreak\xE2\x80\x9D)

  * c[ont]
  run until program ends or hit breakpoint

  * r[un]
  alias for cont

  * s[tep][ nnn]
  step (into methods) one line or till line nnn

  * n[ext][ nnn]
  go over one line or till line nnn

  * w[here]
  displays stack

  * f[rame]
  alias for where

  * l[ist][ (-|nn-mm)]
  list program, - list backwards, nn-mm list given lines. No arguments keeps listing

  * up[ nn]
  move to higher frame

  * down[ nn]
  move to lower frame

  * fin[ish]
  return to outer frame

  * q[uit]
  exit from debugger

  * v[ar] g[lobal]
  show global variables

  * v[ar] l[ocal]
  show local variables

  * v[ar] i[nstance] OBJECT
  show instance variables of object

  * v[ar] c[onst] OBJECT
  show constants of object

  * m[ethod] i[nstance] OBJECT
  show methods of object

  * m[ethod] CLASS|MODULE
  show instance methods of class or module

  * th[read] l[ist]
  list all threads

  * th[read] c[ur[rent]]
  show current thread

  * th[read] [sw[itch]] nnn
  switch thread context to nnn

  * th[read] stop nnn
  stop thread nnn

  * th[read] resume nnn
  resume thread nnn

  * p EXPRESSION
  evaluate expression and print its value

  * pp EXPRESSSION
  evaluate expression and print its value

  * h[elp]
  print this help

  * RETURN KEY
  redo previous command. Convenient when using list, step, next, up, down,

  * EVERYHTING ELSE
  evaluate
"
