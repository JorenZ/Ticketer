require 'rails_helper'

RSpec.describe "UsersLogins", :type => :request do
  describe "GET /users_logins" do
    it "works! (now write some real specs)" do
      get users_logins_path
      expect(response.status).to be(200)
    end
  end
end
