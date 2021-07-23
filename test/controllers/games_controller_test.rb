require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get types" do
    get games_types_url
    assert_response :success
  end
end
