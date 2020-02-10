require 'test_helper'

class LandingPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index_landing" do
    get landing_page_index_landing_url
    assert_response :success
  end

end
