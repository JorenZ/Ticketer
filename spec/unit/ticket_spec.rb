require 'rails_helper'

describe Ticket do

  it "should build valid ticket with factory" do
    @ticket = FactoryGirl.build :ticket
    assert @ticket.valid?, 'Factory-created ticket should be valid'
  end

  before do
    @ticket1 = FactoryGirl.create :ticket, :management
    @ticket2 = FactoryGirl.create :ticket, :finance
    @ticket3 = FactoryGirl.create :ticket, :afsprakenbureau
  end

  it "should not have empty attributes" do
  	ticket = FactoryGirl.build :ticket, :topic => '', :body => ''
  	assert ticket.invalid?
  	assert ticket.errors[:topic].any?, "Ticket should not be valid if topic is empty"
  	assert ticket.errors[:body].any?, "Ticket should not be valid if body is empty"
  end

  it "should have a topic that is in the allowed topic options" do
    ticket = FactoryGirl.build :ticket, :topic => "Onzin"
    assert !ticket.valid?
  end

end