= JQuery Setup:
== Respond_to:

  jQuery.ajaxSetup({ 
    'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")} 
  })

== Authenticity_token:

  $.ajaxSetup({
    data: { authenticity_token : AUTH_TOKEN }
  })
 
  # Application layout
  <% if protect_against_forgery? %>
    <script type="text/javascript">
      var AUTH_TOKEN = '<%= form_authenticity_token %>';
    </script>
  <% end %>
