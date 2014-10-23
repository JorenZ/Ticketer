require 'rails_helper'

describe Ticket do

  before do
    @ticket1 = FactoryGirl.build :ticket
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
    assert !@ticket1.valid? , "Invalid topic option is somehow allowed"
  end

  it "should only allow users with the correct role" do
    @ticket1.user = @user1
    assert !@ticket1.valid?, "Users with role '#{@user1.role}' should not be assigned to tickets"
    @ticket1.user = @user2
    assert @ticket1.valid?, "Users with role '#{@user2.role}' should be allowed to be assigned to tickets"
    @ticket1.user = @user3
    assert @ticket1.valid?, "Users with role '#{@user3.role}' should be allowed to be assigned to tickets"
  end


end