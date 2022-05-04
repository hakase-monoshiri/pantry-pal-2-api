require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    
  test 'does not save user without email' do
    user = User.new(password_digest: 'password') 
    assert_not user.save, "Should not save a user with no email"
  end

  test 'does not allow multiple users with same email' do
    user_1 = User.create(email: "test@test.com", password_digest: 'password')
    user_2= User.new(email: "test@test.com", password_digest: 'password2')
    assert_not user_2.save, "Only one email per user"
  end
  
end
