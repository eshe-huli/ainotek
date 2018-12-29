require 'test_helper'

class CtegoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get resource" do
    get ctegories_resource_url
    assert_response :success
  end

end
