= Locale:
== Configure the I18n module:
  # in config/initializer/locale.rb
  
  # tell the I18n library where to find your translations
  I18n.load_path += Dir[ File.join(RAILS_ROOT, 'lib', 'locale', '*.{rb,yml}') ]
  
  # you can omit this if you're happy with English as a default locale
  I18n.default_locale = "pt-BR" 

== Set I18n.locale with a before_filter:
  before_filter :set_locale
  def set_locale
    session[:locale] = params[:locale] if params[:locale]
    # if this is nil then I18n.default_locale will be used
    I18n.locale = session[:locale]
  end

  http://www.artweb-design.de/2008/7/18/the-ruby-on-rails-i18n-core-api
