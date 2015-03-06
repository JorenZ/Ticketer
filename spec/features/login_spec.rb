require 'rails_helper'

feature "Session" do 

  scenario "visits login page" do
      visit login_path
      expect( page ).to have_title( 'Log in' )
      expect( page ).to have_button( 'Log in' )
  end


  scenario "performs unsuccessful login with invalid information" do
    visit login_path
    fill_in "session_email",    :with => "" # "email" doesn't work, needs to be "session_email" -JZ20140911
    fill_in "session_password", :with => ""# "password" doesn't work, needs to be "session_password" -JZ20140911
    click_button "Log in"
    expect( page ).to have_css '.alert', text: /Invalid/

    visit tickets_path
    expect( page ).to_not have_css '.alert'
  end

  scenario "performs successful login with valid information" do
    @user = FactoryGirl.create( :user )
    
    visit login_path
    fill_in "session_email",    :with => @user.email
    fill_in "session_password", :with => @user.password
    click_button "Log in"

    expect( page ).to have_css '.notice', text: /successful!/
  end

end