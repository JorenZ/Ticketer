class Ticket < ActiveRecord::Base
  before_save { validate_user_role }
  after_save { update_assignment_status }
  attr_accessible :body, :status, :topic, :user_id, :assignment_status

  # validates :topic, with: :topic_check
  # validates :body, with: :body_check
  # validate :validate_user_role

  belongs_to :user

  scope :status, lambda { |status| where("tickets.status = ?", status) if status.present? }
  scope :assignment_status, lambda { |asst| where("tickets.assignment_status = ?", asst) if asst.present? }


  ALL_STATUSES = %w{ open closed removed }
  ALL_ASSIGNMENT_STATUSES = %w{ assigned unassigned }
  ALL_TOPICS = %w{ management finance callcenter }
  
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
    validates :topic, with: :topic_check
    validates :body, with: :body_check
    validate :validate_user_role      
  end
end

private 

def topic_check
  if topic.present?
    true
      if ALL_TOPICS.include? topic
        true
      else
        errors.add( :topic, :must_be_included_in_list )
      end   
  else
    errors.add( :topic, :must_be_present )
  end  
end

def body_check
  if body.present?
    true
  else
    errors.add( :body, :must_be_present )
  end  
end 

def validate_user_role
  if self.user.nil?
    return true
  elsif [ 'Programmer', 'Administrator' ].include?(self.user.role)
    return true
  else
    self.errors.add( :user, :assigned_user_role_must_be_programmer_or_administrator )
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

def translated_status
  I18n.t( status, :scope => :status )
end

def translated_assignment_status
  I18n.t( assignment_status, :scope => :assignment_status )
end

end
