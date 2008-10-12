= textmate_rails: "TextMate Cheat Sheet for Rails Hackers

  Copyright \xC2\xA9 Mike Clark

  http://pragmaticstudio.com

  

  \xE2\x8C\x98 = command

  \xE2\x8C\x83 = control

  \xE2\x8C\xA5 = option

  \xE2\x87\xA7 = shift

  

  File Navigation
  go to file                                  \xE2\x8C\x98 T
  go to line                                  \xE2\x8C\x98 L
  go to method                              \xE2\x87\xA7 \xE2\x8C\x98 T
  find in project                           \xE2\x87\xA7 \xE2\x8C\x98 F
  reveal in project                         \xE2\x8C\x83 \xE2\x8C\x98 R

  

  Editing
  code completion                          Escape
  fold / unfold                                F1
  comment selection                           \xE2\x8C\x98 /
  indent selection                   \xE2\x8C\x98 [  and \xE2\x8C\x98 ]
  move selection                      \xE2\x8C\x83 \xE2\x8C\x98 (arrow)
  edit selection                            \xE2\x8C\xA5 \xE2\x8C\x98 A
  column selection                       \xE2\x8C\xA5 (drag)
  insert tag                                \xE2\x8C\x83 \xE2\x87\xA7 <
  wrap selection in tag                     \xE2\x8C\x83 \xE2\x87\xA7 W
  close tag                                 \xE2\x8C\xA5 \xE2\x8C\x98 .
  wrap selection as link                    \xE2\x8C\x83 \xE2\x87\xA7 L
  subversion menu                           \xE2\x8C\x83 \xE2\x87\xA7 A
  new method                             name \xE2\x87\xA7 \xE2\x86\xA9

  

  Commands                                  \xE2\x8C\x83 \xE2\x8C\xA5 \xE2\x8C\x98 C
  run file as ruby                            \xE2\x8C\x98 R
  start irb                                 \xE2\x8C\x83 \xE2\x87\xA7 I

  

  Snippets                                  \xE2\x8C\x83 \xE2\x8C\xA5 \xE2\x8C\x98 S
                                      Tab Trigger
  class class_name                          class
  def method_name                             def
  each { |element| ... }                     each
  for element in collection                 forin
  if condition                       if or ifelse
  unless condition                         unless
== :key => \"value\"                               :
  flash[:notice] = \"...\"                    flash
  logger.info \"...\"                          logi
  assert_equal value, @o.attr                  ae
  redirect_to options                     rec[ai]
  render :action => \"action\"                   ra
  render :partial => \"item\"               rp[loc]
  create_table \"table\" ...                    mct
  create several: table.column : , :         mccc
  <%= link_to options ...                 lic[ai]
  <% for item in @items ...                eforin
  <%= form_tag options ...                     ft
  has_many :objects ...                        hm
  belongs_to :object ...                       bt
  validates_presence_of :attr ...            vpif

  
                                          Hot Key
  =>                                          \xE2\x8C\x83 L
  params[:id]                                 \xE2\x8C\x83 P
  session[:user]                              \xE2\x8C\x83 J
  <%  %>                                      \xE2\x8C\x83 \xE2\x87\xA7 > (twice)
  <%=  %>                                     \xE2\x8C\x83 \xE2\x87\xA7 > (once)
"
