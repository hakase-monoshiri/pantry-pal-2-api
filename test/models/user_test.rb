require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "is valid" do 
    assert User.first.valid?
  end
    
end
