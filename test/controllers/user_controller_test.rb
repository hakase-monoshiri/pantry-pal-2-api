require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers 
  # test "the truth" do
  #   assert true
  # end
  test "Is able to sign in" do
    sign_in users(:one)

    get users_member_data_path
    
    assert_response :success
  end

  test "does not allow access to non signed in users" do
    get users_member_data_path

    assert_response :redirect

    sign_in users(:one)

    get users_member_data_path

    assert_response :success
  end


end
