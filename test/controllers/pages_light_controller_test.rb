require "test_helper"

class PagesLightControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_light_index_url
    assert_response :success
  end
end
