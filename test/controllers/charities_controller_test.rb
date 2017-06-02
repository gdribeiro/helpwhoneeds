require 'test_helper'

class CharitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get charities_show_url
    assert_response :success
  end

end
