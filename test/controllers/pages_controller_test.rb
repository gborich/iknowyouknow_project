require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get pages_main_url
    assert_response :success
  end

  test "should get client" do
    get pages_client_url
    assert_response :success
  end

  test "should get guru" do
    get pages_guru_url
    assert_response :success
  end

end
