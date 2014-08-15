class Ticket < ActiveRecord::Base
  attr_accessible :body, :state, :topic, :removed, :programmer_id

  validates :topic, :body, presence: true
  
def remove
	update_column( removed: true )
end

def restore
	update_column( removed: false )	
end

end
