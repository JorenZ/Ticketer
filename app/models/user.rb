class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  attr_accessible :name, :role, :email, :password, :password_confirmation, :password_digest

  ALL_ROLES = %{ administrator programmer user }
  validates :name, with: :name_check
  validates :role, with: :role_check
  validates :email, with: :email_check
  validates :email, uniqueness: { case_sensitive: false } # TODO: put this into email_check method below
  validates :password, with: :password_check
  has_secure_password

  has_many :tickets

  def translated_role
    I18n.t( role, :scope => :roles )
  end

  private

  def name_check
    if name.present?
      true      
      if name.length <= 50
        true
      else
        errors.add( :name, :length_must_be_leq_50_chars )
      end
    else
      errors.add( :name, :must_be_present )
    end

  end

  def role_check
    if role.present?
      true
      if ALL_ROLES.include? role
        true
      else
        errors.add( :role, :must_be_included_in_list )
      end   
    else
      errors.add( :role, :must_be_present )
    end
  end    

  def email_check     # TODO: implement email uniqueness
    if email.present?
      true
      if email.downcase =~ /^[^\@\s]+\@{1}[^\@\s\.]+(\.{1}[^\@\s\.]+)+$/
        true
      else
        errors.add( :email, :invalid_format )
      end        
    else
      errors.add( :email, :must_be_present )
    end

  end

  def password_check
    if password.present? && password_digest.present?
      true
      if password.length >= 8 && password_digest.length >= 8
        true
      else
        errors.add( :password, :password_and_password_digest_length_must_be_geq_8_chars )
      end
    else
      errors.add( :password, :password_and_password_digest_must_be_present )
    end
  end

end