class Ticket < ActiveRecord::Base
  attr_accessible :body, :state, :topic, :removed, :programmer_id

  validates_presence_of :topic, :body
  validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }

scope :removed, where( removed: true )  

belongs_to :user

def remove
  @ticket.removed = true
end

def removed?
  return self.removed
end

def assigned?
  return true if self.programmer_id.presence 
end

end
