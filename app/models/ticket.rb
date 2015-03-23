class Ticket < ActiveRecord::Base
  before_save { validate_user_role }
  after_save { update_assignment_status }
  attr_accessible :body, :status, :topic, :user_id, :assignment_status

  validates_presence_of :topic, :body
  validates :topic, :inclusion => { :in => %w(Management Finance Callcenter) }
  validate :validate_user_role

  belongs_to :user

  scope :status, lambda { |status| where("tickets.status = ?", status) if status.present? }
  scope :assignment_status, lambda { |asst| where("tickets.assignment_status = ?", asst) if asst.present? }


  ALL_STATUSES = %w{ open closed removed }
  ALL_ASSIGNMENT_STATUSES = %w{ assigned unassigned }
  
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

  state :open, :closed, :removed do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Callcenter) }
    validate :validate_user_role      
  end
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
