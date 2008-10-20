= Mail:

  def mail(recipient)
    @from "sender.address@example.com"
    @recipients recipient
    @subject "Hi #{recipient}"
    @body(:recipient => recipient)
  end

  You can use @recipient to quote recipient's value in the layout of mail

  You can deliver mail use deliver_mail
== Different Content Type:
  signup_notification.zh-TW.text.plain.erb
  signup_notification.zh-TW.text.html.erb 

== Configure:

  ./script/plugin install http://svn.nanorails.com/plugins/action_mailer_tls

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.default_charset = "utf-8"
  ActionMailer::Base.sendmail_settings = SENDMAIL_SETTINGS  
  SMTP_SETTINGS  = {  
    :address  => "smtp.gmail.com",
    :port  => 587,
    :domain  => "www.xxx.com",
    :authentication  => :login,
    :user_name  => "***",
    :password  => "***"
  } 

  ActionMailer::Base.delivery_method = :sendmail  
  ActionMailer::Base.sendmail_settings = SENDMAIL_SETTINGS  
  SENDMAIL_SETTINGS = {  
    :location       => '/usr/sbin/sendmail',  
    :arguments      => '-i -t'  
  }  
