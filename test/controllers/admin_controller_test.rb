require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:admin)
  end

  test "should get index" do
    get admin_url
    assert_response :success
  end

end
