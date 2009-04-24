= Rspec Mail:
 Test Mail Use Rspec:

  lambda{ 
     post :create,:email => 'user@mail.com',:pass => 'pass'
  }.should change(ActionMailer::Base.deliveries, :size).by(1)


  assert_difference 'ActionMailer::Base.deliveries.size' do
    Factory(:user).forgot_password
  end
