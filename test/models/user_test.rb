require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test relationships
  should have_many(:visits)
  should have_many(:visit_actions).through(:visits)

  # test validations
  should validate_numericality_of(:user_visit_count)
  should allow_value(120).for(:user_visit_count)
  should allow_value(0).for(:user_visit_count)
  should_not allow_value("bad").for(:user_visit_count)
  should_not allow_value(-20).for(:user_visit_count)
  should_not allow_value(3.14159).for(:user_visit_count)

  # set up contexts 
  context "Within context" do
    setup do
      create_users
    end

    teardown do
      delete_users
    end

    should "show that there are ten users" do
      assert_equal 10, User.all.size
    end

  end
end
