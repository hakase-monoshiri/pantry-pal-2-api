require "test_helper"

class PantriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get pantries_url
    assert_response :success
  end

end
