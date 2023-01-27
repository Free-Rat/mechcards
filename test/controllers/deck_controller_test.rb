require "test_helper"

class DeckControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get deck_show_url
    assert_response :success
  end
end
