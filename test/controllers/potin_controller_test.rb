require 'test_helper'

class PotinControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get potin_show_url
    assert_response :success
  end

end
