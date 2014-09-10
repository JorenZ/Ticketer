require 'rails_helper'

describe "OverviewRequest" do 

  subject { page }

  describe "overview page" do
    before { visit overview_path }

    it { should have_text( 'Ticketer' ) }
  end

end