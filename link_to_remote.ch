= link_to_remote: "link_to_remote(name, options = {}, html_options = {})

  

  Returns a link to a remote action defined by options[:url] (using the url_for format) that\xE2\x80\x98s called in the background using XMLHttpRequest. The result of that request can then be inserted into a DOM object whose id can be specified with options[:update]. Usually, the result would be a partial prepared by the controller with render :partial.

  

== Examples:

  
  link_to_remote \"Delete this post\", :update => \"posts\",
    :url => { :action => \"destroy\", :id => post.id }
  link_to_remote(image_tag(\"refresh\"), :update => \"emails\",
    :url => { :action => \"list_emails\" })

  

== You can also specify a hash for options[:update] to allow for easy redirection of output to an other DOM element if a server-side error occurs:

  

== Example:

  
  link_to_remote \"Delete this post\",
    :url => { :action => \"destroy\", :id => post.id },
    :update => { :success => \"posts\", :failure => \"error\" }
"
