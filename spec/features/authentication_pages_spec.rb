require 'rails_helper'

describe "AuthenticationRequest" do 

	subject { page }

	describe "login page" do 

		before { visit login_path }

		it { should have_button( 'Log in' ) }
		it { should have_title( 'Log in' ) }
	end
end