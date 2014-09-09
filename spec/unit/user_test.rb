require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup 
    @user = User.new(
      name: "Firstname",
      role: "Programmer",
      email: "testone@example.com",
      password: "passwordone",
      password_confirmation: "passwordone",
      password_digest: "$2a$10$ibV9itmyBdNik93gRIlIRO9HVeM0fdwTNKylv4fOwrpVYKD6RN7Z2" # digest for 'passwordone'
    )

    @user2 = User.new(
      name: "Secondname",
      role: "Administrator",
      email: "testtwo@example.com",
      password: "passwordtwo",
      password_confirmation: "passwordtwo",
      password_digest: "$2a$10$hWHBWmu1CkOhwPrBahFCj.bmYIb2KfngMsvMRriheLBT4CRZGmswi" # digest for 'passwordtwo'
    )
  end

  test 'an empty user is not valid' do 
    assert !User.new.valid?, 'Empty user should not be valid'
  end

  test 'fixture users are valid' do 
    assert @user.valid?, 'First fixture user not valid'
    assert @user2.valid?, 'Second fixture user not valid'
  end

  test 'user name cannot be too long' do 
    @user.name = "a" * 49
    assert @user.valid?, 'Name <= 50 chars should be valid'
    @user.name = "a" * 51
    assert !@user.valid?, 'Name > 50 chars should be invalid'
  end

  test 'user role should be in allowed roles' do # see model for allowed roles
    @user.role = "Programmer" # case-sensitive
    assert @user.valid?, "'Programmer' (case-sensitive) should be an allowed role"
    @user.role = "Nonsenserole"
    assert !@user.valid?, 'Invalid roles should not be accepted'
  end

  test 'user email should be valid' do 
    valid_emails =    %w( test@test.com 
                          test+unorthodox@test.provider.com
                          i.n.i.tials@provider.co.uk
    )
    
    valid_emails.each do |valid_email|
      @user.email = valid_email
      assert @user.valid?, "Email address '#{valid_email}' should be valid"
    end

    invalid_emails =  %w( test@@test.com      # double @
                          test@test@test.com  # double @
                          test.com            # no @
                          user@provider       # no extension
                          user@provider..com  # double ..
                          user@.com           # no provider
    )

    invalid_emails.each do |invalid_email|
      @user.email = invalid_email
      assert !@user.valid?, "Email address '#{invalid_email}' should be invalid"
    end
  end

  test 'user email should be unique' do
    duplicate_user = @user2.dup
    @user2.save 
    assert !duplicate_user.valid?, 'A duplicate email address should be invalid'
  end

  test 'user email uniqueness should not be case-sensitive' do 
    duplicate_user = @user2.dup
    duplicate_user.email = @user2.email.upcase
    @user2.save 
    assert !duplicate_user.valid?, 'Email uniqueness should be case-insensitive'
  end

end
