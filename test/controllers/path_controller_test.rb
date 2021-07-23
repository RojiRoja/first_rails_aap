require "test_helper"

class PathControllerTest < ActionDispatch::IntegrationTest
  test "should get way" do
    get path_way_url
    assert_response :success
  end
end
