require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get price" do
    get :price
    assert_response :success
  end

end
