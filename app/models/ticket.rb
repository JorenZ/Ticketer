class Ticket < ActiveRecord::Base
  attr_accessible :body, :state, :topic

def remove
	update_column( removed: true )
end

def restore
	update_column( removed: false )	
end

end
