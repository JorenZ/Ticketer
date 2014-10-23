require 'rails_helper'

describe User do 

  before do
    @user1 = FactoryGirl.build :user
    @user2 = FactoryGirl.build :user,          email: "emailtwo@example.com"
    @admin = FactoryGirl.build :user, :admin,  email: "adminemail@example.com"
  end

# password_digest: "$2a$10$ibV9itmyBdNik93gRIlIRO9HVeM0fdwTNKylv4fOwrpVYKD6RN7Z2" # digest for 'passwordone'
# password_digest: "$2a$10$hWHBWmu1CkOhwPrBahFCj.bmYIb2KfngMsvMRriheLBT4CRZGmswi" # digest for 'passwordtwo'
# password_digest '$2a$10$rCXQLCia46T79jCqXoJF8.m415YO.uzKPJ/d2pJHJsMzHtGEOiaO2' # digest for 'passwordadmin'

  it "should not be empty" do
    assert !User.new.valid?
  end

  it "cannot have user name longer than 50 chars" do 
    @user1.name = "a" * 49
    assert @user1.valid?, 'Name <= 50 chars should be valid'
    @user1.name = "a" * 51
    assert !@user1.valid?, 'Name > 50 chars should be invalid'
  end

  it "should have a role from the allowed roles" do # see model for allowed roles
    @user1.role = "Programmer" # case-sensitive
    assert @user1.valid?, "'Programmer' (case-sensitive) should be an allowed role"
    @user1.role = "Administrator" # case-sensitive
    assert @user1.valid?, "'Administrator' (case-sensitive) should be an allowed role"
    @user1.role = "User" # case-sensitive
    assert @user1.valid?, "'User' (case-sensitive) should be an allowed role"
    @user1.role = "Nonsenserole"
    assert !@user1.valid?, 'Invalid roles should not be accepted'
  end

  it "should have a valid email address" do 
    valid_emails =    %w( test@test.com 
                          test+unorthodox@test.provider.com
                          i.n.i.tials@provider.co.uk
    )
    
    valid_emails.each do |valid_email|
      @user2.email = valid_email
      assert @user2.valid?, "Email address '#{valid_email}' should be valid"
    end

    invalid_emails =  %w( test@@test.com      # double @
                          test@test@test.com  # double @
                          test.com            # no @
                          user@provider       # no extension
                          user@provider..com  # double ..
                          user@.com           # no provider
    )

    invalid_emails.each do |invalid_email|
      @user2.email = invalid_email
      assert !@user2.valid?, "Email address '#{invalid_email}' should be invalid"
    end
  end

  it "should have a unique email address" do
    @user1.save
    duplicate_user = @user1.dup
    assert !duplicate_user.valid?, 'A duplicate email address should be invalid'
  end

  it "should not have a case-sensitive uniqueness constraint on emails" do 
    @user2.save
    duplicate_user = @user2.dup
    assert !duplicate_user.valid?, 'Email uniqueness should be case-insensitive'
  end

end
