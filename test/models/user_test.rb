require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "is valid" do 
    assert User.first.valid?
  end
    
  test 'does not save user without email' do
    user = User.new(password_digest: 'password') 
    assert_not user.save, "Should not save a user with no email"
  end
  
end
