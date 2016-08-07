require 'test_helper'

class PrivateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_index_url
    assert_response :success
  end

  test "should get signed_in" do
    get private_signed_in_url
    assert_response :success
  end

end
