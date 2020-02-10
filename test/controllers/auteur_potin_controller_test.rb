require 'test_helper'

class AuteurPotinControllerTest < ActionDispatch::IntegrationTest
  test "should get show_auteur" do
    get auteur_potin_show_auteur_url
    assert_response :success
  end

end
