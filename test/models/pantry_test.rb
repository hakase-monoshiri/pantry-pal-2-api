require "test_helper"

class PantryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'have a list of ingredients' do
    assert_not_nil Pantry.first.ingredients, 'Should have included ingredients'
  end


end
