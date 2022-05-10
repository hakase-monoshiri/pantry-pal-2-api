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

  test 'does not accept bad email addresses' do
    user = User.new(email: "not an email address", password_digest: 'password')
    user_2 = User.new(email: "notanemailaddress", password_digest: 'password')
    user_3 = User.new(email: "anemail@addr.ess", password_digest: 'password')

    assert_not user.save, "email should not allow spaces"
    assert_not user_2.save, "email should have an @ and a ."
    assert user_3.save
  end
  
end
