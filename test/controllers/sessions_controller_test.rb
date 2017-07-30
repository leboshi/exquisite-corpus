require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url
    assert_response :success
  end

  test "should get create" do
    alan = users(:one)
    post login_url, params: { name: alan.name, password: 'secret' }
    assert_redirected_to admin_url
  end

  test "should get destroy" do
    delete logout_url
    assert_redirected_to login_url
  end

end
