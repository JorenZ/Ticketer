class Ticket < ActiveRecord::Base
  before_save { validate_user_role }
  after_save { update_assignment_status }
  attr_accessible :body, :status, :topic, :user_id, :assignment_status

  validates_presence_of :topic, :body
  validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
  
  belongs_to :user

# Possible ticket states:
#   open (after creation)
#   closed (only open tickets can be closed; only by programmers/administrators)
#   removed (all tickets can be removed; only by programmers/administrators)
#   reopen (all tickets can be reopened; only by programmers/administrators)
state_machine :status, :initial => :open do
  event :close do
    transition :open => :closed
  end

  event :remove do
    transition any => :removed
  end

  event :reopen do
    transition any => :open
  end

  state :open do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
    validate :validate_user_role      
  end

  state :closed do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
    validate :validate_user_role      
  end

  state :removed do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
    validate :validate_user_role      
  end
end

# required for state_machine
def initialize
  @status = 'open'
  super()
end

private 

def validate_user_role
  if self.user.nil?
    return true
  elsif [ 'Programmer', 'Administrator' ].include?(self.user.role)
    return true
  else
    self.errors.add( :user, "role must be either programmer or administrator" )
    return false
  end
end

def update_assignment_status
  if self.user 
    update_column( :assignment_status, 'assigned' )
  else
    update_column( :assignment_status, 'unassigned' )
  end
end

end
