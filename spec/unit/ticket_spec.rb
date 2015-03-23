require 'rails_helper'

describe Ticket do

  before do
    @ticket1 = FactoryGirl.build :ticket
    @ticket2 = FactoryGirl.create :ticket
    @ticket3 = FactoryGirl.create :ticket
    
    @user1 = FactoryGirl.create :user, :user
    @user2 = FactoryGirl.create :user, :programmer, :email => 'user2email@example.com'
    @user3 = FactoryGirl.create :user, :admin, :email => 'user3email@example.com'
  end

  it "should not have empty attributes" do
  	@ticket1.topic = ''
    @ticket1.body = ''
  	assert @ticket1.invalid?
  	assert @ticket1.errors[:topic].any?, "Ticket should not be valid if topic is empty"
  	assert @ticket1.errors[:body].any?, "Ticket should not be valid if body is empty"
  end

  it "should have a topic that is in the allowed topic options" do
    @ticket1.topic = 'onzin'
    assert !@ticket1.valid? , "Invalid topic option #{ @ticket1.topic } is somehow allowed"
    
    @ticket1.topic = 'Callcenter'
    assert @ticket1.valid? , "Valid topic option #{ @ticket1.topic } is somehow not allowed"
    
    @ticket1.topic = 'Management'
    assert @ticket1.valid? , "Valid topic option #{ @ticket1.topic } is somehow not allowed"
    
    @ticket1.topic = 'Finance'
    assert @ticket1.valid? , "Valid topic option #{ @ticket1.topic } is somehow not allowed"
  end

  it "should only allow users with the correct role" do
    @ticket1.user = @user1
    assert !@ticket1.save , "Users with role '#{@user1.role}' should not be allowed to be assigned to tickets"
    @ticket1.user = @user2
    assert @ticket1.save , "Users with role '#{@user2.role}' should be allowed to be assigned to tickets"
    @ticket1.user = @user3
    assert @ticket1.save , "Users with role '#{@user3.role}' should be allowed to be assigned to tickets"
  end

  it "should only allow valid state transitions" do
    assert @ticket2.status = 'open', "Newly created ticket should have status 'open', not '#{@ticket2.status}'"
    assert @ticket3.status = 'open', "Newly created ticket should have status 'open', not '#{@ticket3.status}'"
    # 2 is open, 3 is open

    # open tickets can be closed or removed
    @ticket2.close 
    assert @ticket2.valid?
    assert @ticket2.status = 'closed', "An open ticket should be able to be closed" 

    @ticket3.remove
    assert @ticket3.valid?
    assert @ticket3.status = 'removed', "An open ticket should be able to be removed"


    # closed tickets can be reopened or removed
    @ticket2.reopen
    assert @ticket2.valid?
    assert @ticket2.status = 'open', "A closed tickets should be able to be reopened"

    @ticket2.close # closing an open ticket works, see above
    @ticket2.remove
    assert @ticket2.valid?
    assert @ticket2.status = 'removed', "A closed ticket should be able to be removed"


    # removed tickets can be reopened only
    @ticket2.reopen
    assert @ticket2.valid?
    assert @ticket2.status = 'open', "A closed ticket should be able to be reopened"

    @ticket2.remove
    @ticket2.close
    assert @ticket2.errors[:status].any?, "A removed ticket should not be allowed to be removed"
  end
end