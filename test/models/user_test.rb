require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "is valid" do 
    assert User.first.valid?
  end
    
  test 'does not save user without email' do
    user = User.new
    assert_not user.save
  end
  
end
