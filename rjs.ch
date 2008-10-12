= rjs: "<<(javascript)

  Writes raw JavaScript to the page.

  

  [](id)
== Returns a element reference by finding it through id in the DOM. This element can then be used for further method calls. Examples:
    page['blank_slate']                  # => $('blank_slate');
    page['blank_slate'].show             # => $('blank_slate').show();
    page['blank_slate'].show('first').up # => $('blank_slate').show('first').up();

  

  alert(message)
  Displays an alert dialog with the given message.

  

  assign(variable, value)
  Assigns the JavaScript variable the given value.

  

  call(function, *arguments, &block)
  Calls the JavaScript function, optionally with the given arguments.
  If a block is given, the block will be passed to a new JavaScriptGenerator; the resulting JavaScript code will then be wrapped inside function() { \xE2\x80\xA6 } and passed as the called function\xE2\x80\x98s final argument.

  

  delay(seconds = 1) {|| ...}
== Executes the content of the block after a delay of seconds. Example:
    page.delay(20) do
      page.visual_effect :fade, 'notice'
    end

  

  draggable(id, options = {})
  Creates a script.aculo.us draggable element. See ActionView::Helpers::ScriptaculousHelper for more information.

  

  drop_receiving(id, options = {})
  Creates a script.aculo.us drop receiving element. See ActionView::Helpers::ScriptaculousHelper for more information.

  

  hide(*ids)
  Hides the visible DOM elements with the given ids.

  

  insert_html(position, id, *options_for_render)
  Inserts HTML at the specified position relative to the DOM element identified by the given id.
== position may be one of:
  :top:\tHTML is inserted inside the element, before the element\xE2\x80\x98s existing content.
  :bottom:\tHTML is inserted inside the element, after the element\xE2\x80\x98s existing content.
  :before:\tHTML is inserted immediately preceeding the element.
  :after:\tHTML is inserted immediately following the element.
== options_for_render may be either a string of HTML to insert, or a hash of options to be passed to ActionView::Base#render. For example:
    # Insert the rendered 'navigation' partial just before the DOM
    # element with ID 'content'.
    insert_html :before, 'content', :partial => 'navigation'

  
    # Add a list item to the bottom of the <ul> with ID 'list'.
    insert_html :bottom, 'list', '<li>Last item</li>'

  

  literal(code)
  Returns an object whose to_json evaluates to code. Use this to pass a literal JavaScript expression as an argument to another JavaScriptGenerator method.

  

  redirect_to(location)
  Redirects the browser to the given location, in the same form as url_for.

  

  remove(*ids)
  Removes the DOM elements with the given ids from the page.

  

  replace(id, *options_for_render)
  Replaces the \"outer HTML\" (i.e., the entire element, not just its contents) of the DOM element with the given id.
== options_for_render may be either a string of HTML to insert, or a hash of options to be passed to ActionView::Base#render. For example:
    # Replace the DOM element having ID 'person-45' with the
    # 'person' partial for the appropriate object.
    replace 'person-45', :partial => 'person', :object => @person
  This allows the same partial that is used for the insert_html to be also used for the input to replace without resorting to the use of wrapper elements.
== Examples:
    <div id=\"people\">
      <%= render :partial => 'person', :collection => @people %>
    </div>

  
    # Insert a new person
    page.insert_html :bottom, :partial => 'person', :object => @person

  
    # Replace an existing person
    page.replace 'person_45', :partial => 'person', :object => @person

  

  replace_html(id, *options_for_render)
  Replaces the inner HTML of the DOM element with the given id.
== options_for_render may be either a string of HTML to insert, or a hash of options to be passed to ActionView::Base#render. For example:
    # Replace the HTML of the DOM element having ID 'person-45' with the
    # 'person' partial for the appropriate object.
    replace_html 'person-45', :partial => 'person', :object => @person

  

  select(pattern)
== Returns a collection reference by finding it through a CSS pattern in the DOM. This collection can then be used for further method calls. Examples:
    page.select('p')                      # => $$('p');
    page.select('p.welcome b').first      # => $$('p.welcome b').first();
    page.select('p.welcome b').first.hide # => $$('p.welcome b').first().hide();
== You can also use prototype enumerations with the collection. Observe:
    page.select('#items li').each do |value|
      value.hide
    end
    # => $$('#items li').each(function(value) { value.hide(); });
== Though you can call the block param anything you want, they are always rendered in the javascript as \xE2\x80\x98value, index.\xE2\x80\x99 Other enumerations, like collect() return the last statement:
    page.select('#items li').collect('hidden') do |item|
      item.hide
    end
    # => var hidden = $$('#items li').collect(function(value, index) { return value.hide(); });

  

  show(*ids)
  Shows hidden DOM elements with the given ids.

  

  sortable(id, options = {})
  Creates a script.aculo.us sortable element. Useful to recreate sortable elements after items get added or deleted. See ActionView::Helpers::ScriptaculousHelper for more information.

  

  toggle(*ids)
  Toggles the visibility of the DOM elements with the given ids.

  

  visual_effect(name, id = nil, options = {})
  Starts a script.aculo.us visual effect. See ActionView::Helpers::ScriptaculousHelper for more information."
