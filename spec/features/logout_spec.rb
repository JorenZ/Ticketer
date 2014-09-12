require 'rails_helper'

feature "Session" do 

  scenario "logs out after being logged in" do
    @user = FactoryGirl.create( :user )
    
    visit login_path
    fill_in "session_email",    :with => @user.email
    fill_in "session_password", :with => @user.password
    click_button "Log in"

    expect( page ).to have_css '.notice', text: /successful!/

    click_link "Log out"

    expect( page ).to have_text 'Log in'
  end

end