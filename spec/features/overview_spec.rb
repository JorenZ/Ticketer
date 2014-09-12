require 'rails_helper'

feature "OverviewRequest" do 

  scenario "visit overview page" do
    visit overview_path
    expect( page ).to have_text( 'Ticketer' )
  end

end