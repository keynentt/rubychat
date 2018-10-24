require 'test_helper'

class ChatControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get chat_create_url
    assert_response :success
  end

  test "should get store" do
    get chat_store_url
    assert_response :success
  end

end
