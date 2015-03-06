require 'rails_helper'

feature "OverviewRequest" do 

  scenario "visit ticket page" do
    visit tickets_path
    expect( page ).to have_text( 'Ticketer' )
  end

end