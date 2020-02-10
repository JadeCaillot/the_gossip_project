require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index_potins" do
    get welcome_index_potins_url
    assert_response :success
  end

end
