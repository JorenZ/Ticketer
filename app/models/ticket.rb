class Ticket < ActiveRecord::Base
  attr_accessible :body, :state, :topic, :removed, :programmer_id

  validates_presence_of :topic, :body
  validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }

scope :removed, where( removed: true )  

def removed?
  return self.removed
end

def remove
  @ticket.removed = true
end

end
