require 'test_helper'

class OverviewControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#banner', /Ticketer/
    assert_select '.table', /Afsprakenbureau/
    assert_select '#main .tbody', 1
  end

end
