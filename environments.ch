= environments: "Options allowed by Rails::Configuration in Rails 1.1.2.

  From http://glu.ttono.us/articles/2006/05/22/configuring-rails-environments-the-cheat-sheet

  

  General Options
  breakpoint_server
    Whether or not to use the breakpoint server (boolean)
  cache_classes
    Whether or not classes should be cached (set to false if you want application classes to be reloaded on each request) 
  connection_adapters     
    The list of connection adapters to load.
    By default, all connection adapters are loaded. You can set this to be just the adapter(s) you will use to reduce your application\xE2\x80\x99s load time. 
  controller_paths
    The list of paths that should be searched for controllers.
    Defaults to app/controllers and components.
  database_configuration_file
    The path to the database configuration file to use.
    Defaults to config/database.yml.
  frameworks
    The list of rails framework components that should be loaded.
    Defaults to :active_record, :action_controller, :action_view, :action_mailer, and 
    :action_web_service.
  load_paths
    An array of additional paths to prepend to the load path.
    By default, all app, lib, vendor and mock paths are included in this list.
  log_level
    The log level to use for the default Rails logger.
    In production mode, this defaults to :info. In development mode, it defaults to :debug.
  log_path
    The path to the log file to use.
    Defaults to log/#{environment}.log (e.g. log/development.log or log/production.log).
  logger
    The specific logger to use.
    By default, a logger will be created and initialized using #log_path and #log_level, but a programmer may specifically set the logger to use via this accessor and it will be used directly.
  view_path
    The root of the application's views.
    Defaults to app/views.
  whiny_nils
    Set to true if you want to be warned (noisily) when you try to invoke any method of nil. 
    Set to false for the standard Ruby behavior.
  plugin_paths
    The path to the root of the plugins directory.
    By default, it is in vendor/plugins.

  

  ActiveRecord Options

  Each of these options should be prepended with config.active_record. when 

  used with a Rails::Initializer do |config| block.

  
  primary_key_prefix_type
    Accessor for the prefix type that will be prepended to every primary key column name. 
    The options are :table_name and :table_name_with_underscore. If the first is specified, the Product class will look for \"productid\" instead of \"id\" as the primary column. If the latter is specified, the Product class will look for \"product_id\" instead of \"id\". Remember that this is a global setting for all Active Records.
  table_name_prefix
    The string to prepend to every table name.
    By default, the prefix is an empty string
  table_name_suffix
    The same as table_name_prefix, but it appends the string to the table name.
  pluralize_table_names
    Indicates whether or not table names should be the pluralized versions of the corresponding class names.
    Defaults to true.
  colorize_logging
    Should logs have ANSI color codes in logging statments?
    Defaults to true
  default_timezone
    Determines whether to use Time.local (using :local) or Time.utc (using :utc) when pulling dates and times from the database.
    Defaults to :local by default.
  allow_concurrency
    Determines whether or not to use a connection for each thread, or a single shared connection for all threads.
    Defaults to false. Set to true if you're writing a threaded application.
  generate_read_methods
    Determines whether to speed up access by generating optimized reader methods to avoid expensive calls to method_missing when accessing attributes by name. 
    You might want to set this to false in development mode, because the methods would be regenerated on each request.
  schema_format
    Specifies whether to dump the database in ruby or sql. It takes :ruby or :sql as options, and defaults to :ruby

  

  ActionController Options

  Each of these options should be prepended with config.action_controller. when 

  used with a Rails::Initializer do |config| block.

  
  view_controller_internals
    Determines whether the view has access to controller internals @request, @response, @session, and @template.
  assert_host
    Prepends all the URL-generating helpers from AssetHelper (eg. image_tag)
  consider_all_requests_local
    All requests are considered local by default (true), so everyone will be exposed to 
    detailed debugging screens on errors.
    Defaults to true
  debug_routes
    Enable or disable the collection of failure information for RoutingErrors.
    Defaults to true.
  allow_concurrency
    Controls whether the application is thread-safe.
    Defaults to false.
  param_parsers
    Lets you register handlers wich will process the http body and add parameters to the @params hash.
    Defaults to { Mime::XML => :xml_simple }
  template_root
    Sets the default template location. For example, a call to render(\"test/template\") 
    will be converted to \"#{template_root}/test/template.rhtml\" logger
    Can be set to nil for no logging or a logger conforming to the interface of Log4r or the default Ruby 1.8+ Logger class.
  ignore_missing_templates
    Turn on ignore_missing_templates if you want to unit test actions without making the associated templates.

  

  ActionView Options

  Each of these options should be prepended with config.action_view. when 

  used with a Rails::Initializer do |config| block.

  
  cache_template_loading
    Specify whether file modification times should be checked to see if a template needs recompilation
  cache_template_extensions
    Specify whether file extension lookup should be cached. Should be false for development environments.
    Defaults to true.
  local_assigns_support_string_keys
    Specify whether local_assigns should be able to use string keys.
    Defaults to true.
    String keys are deprecated and will be removed shortly.
  debug_rjs
    Specify whether RJS responses should be wrapped in a try/catch block that alert()s 
    the caught exception (and then re-raises it).
    Defaults to false.
  logger
    Can be set to nil for no logging or a logger conforming to the interface of Log4r or the default Ruby 1.8+ Logger class.
"
