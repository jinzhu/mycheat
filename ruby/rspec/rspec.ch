= Rspec:
== SHOULDA COULDA WOULDA
  target.should satisfy {|arg| ...}
  target.should_not satisfy {|arg| ...}

  target.should equal <value>
  target.should not_equal <value>

  target.should be_close <value>, <tolerance>
  target.should_not be_close <value>, <tolerance>

  target.should be <value>
  target.should_not be <value>

  target.should predicate [optional args]
  target.should be_predicate [optional args]
  target.should_not predicate [optional args]
  target.should_not be_predicate [optional args]

  target.should be < 6
  target.should == 5
  target.should_not == 'Samantha'

  target.should match <regex>
  target.should_not match <regex>

  target.should be_an_instance_of <class>
  target.should_not be_an_instance_of <class>

  target.should be_a_kind_of <class>
  target.should_not be_a_kind_of <class>

  target.should respond_to <symbol>
  target.should_not respond_to <symbol>

  lambda {a_call}.should raise_error
  lambda {a_call}.should raise_error(<exception>)
  lambda {a_call}.should_not raise_error
  lambda {a_call}.should_not raise_error(<exception>)

  proc.should throw <symbol>
  proc.should_not throw <symbol>

  target.should include <object>
  target.should_not include <object>

  target.should have(<number>).things
  target.should have_at_least(<number>).things
  target.should have_at_most(<number>).things

  target.should have(<number>).errors_on(:field)

  proc { thing.approve! }.should change(thing, :status).from(Status::AWAITING_APPROVAL).to(Status::APPROVED)

  proc { thing.destroy }.should change(Thing, :count).by(-1)

== Mocks and Stubs

  user_mock = mock "User"
  user_mock.should_receive(:authenticate).with("password").and_return(true)
  user_mock.should_receive(:coffee).exactly(3).times.and_return(:americano)
  user_mock.should_receive(:coffee).exactly(5).times.and_raise(NotEnoughCoffeeExcepion)

  people_stub = mock "people"
  people_stub.stub!(:each).and_yield(mock_user)
  people_stub.stub!(:bad_method).and_raise(RuntimeError)

  user_stub = mock_model("User", :id => 23, :username => "pat", :email => "pat@example.com") 

== Examples (in the real world)
  http://madhatted.com/2008/7/10/rspec-real-world-testing
