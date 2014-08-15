require 'test_helper'

class TicketTest < ActiveSupport::TestCase

	fixtures :tickets

test "ticket attributes must not be empty" do
	ticket = Ticket.new
	assert ticket.invalid?
	assert ticket.errors[:topic].any?, "Ticket should not be valid if topic is empty"
	assert ticket.errors[:body].any?, "Ticket should not be valid if body is empty"
end

end
