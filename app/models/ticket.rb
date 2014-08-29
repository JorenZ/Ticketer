class Ticket < ActiveRecord::Base
  attr_accessible :body, :state, :topic, :removed, :programmer_id

  validates_presence_of :topic, :body

scope :removed, where( removed: true )  
scope :not_removed, where( removed: false )

def removed?
  return self.removed
end

end
