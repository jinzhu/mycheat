# vi:ft=cheat.javascript.jquery
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

== SubmitWithAjax:

  jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
      $.ajax({
        url: $(this).attr('action'),
        type: "POST",
        data: $(this).serialize(),
        dataType: 'script',
        timeout: 15000,
        });
      return false;
      });
  };

  $('#form').submitWithAjax();

== ajaxUpdate:
  $.fn.ajaxUpdate = function() {
    $(this).click(function(){
        if (confirm('Are you sure?')) {
        $.ajax({
          url: this.href,
          type: this.getAttribute('ajaxmethod') || "PUT",
          data: 'name='+ this.name + '&authenticity_token=' + encodeURIComponent(AUTH_TOKEN),
          dataType: 'script',
          });
        return false;
        }});
  };
