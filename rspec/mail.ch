= Rspec Mail:
 Test Mail Use Rspec:

  lambda{ 
     post :create,:email => 'user@mail.com',:pass => 'pass'
  }.should change(ActionMailer::Base.deliveries, :size).by(1)
