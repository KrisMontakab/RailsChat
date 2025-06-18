require "test_helper"

class TailwindTestControllerTest < ActionDispatch::IntegrationTest
  test "should get TestPage" do
    get tailwind_test_TestPage_url
    assert_response :success
  end
end
