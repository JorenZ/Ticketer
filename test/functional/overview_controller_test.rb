require 'test_helper'

class OverviewControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 2
    assert_select 'h2', 'Afsprakenbureau'
    assert_select '#main .ticket', 2
  end

end
