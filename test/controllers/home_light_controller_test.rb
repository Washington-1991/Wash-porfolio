require "test_helper"

class HomeLightControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_light_index_url
    assert_response :success
  end
end
