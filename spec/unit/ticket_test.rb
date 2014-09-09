require 'test_helper'

class TicketTest < ActiveSupport::TestCase

  def setup
    @ticket = Ticket.new( 
      topic:  "Management", 
      body:   "Test-ticket number one for management", 
      state:  "completed"
    )
    @ticket2 = Ticket.new(
      topic:  "Afsprakenbureau",
      body:   "Test-ticket number one for management",
      state:  "completed" 
    )
  end

  test "ticket attributes must not be empty" do
  	ticket = Ticket.new
  	assert ticket.invalid?
  	assert ticket.errors[:topic].any?, "Ticket should not be valid if topic is empty"
  	assert ticket.errors[:body].any?, "Ticket should not be valid if body is empty"
  end

  test 'fixture tickets are valid' do 
    assert @ticket.valid?, 'First fixture ticket not valid'
    assert @ticket2.valid?, 'Second fixture ticket not valid'
  end

  test 'topic cannot be empty' do
    @ticket.topic = ""
    assert !@ticket.valid?
  end

  test 'topic must be in topic options' do
    @ticket.topic = "Onzin"
    assert !@ticket.valid?
  end

  test 'body cannot be empty' do
    @ticket.body = ""
    assert !@ticket.valid?
  end

end
