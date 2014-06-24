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

    should "show that there is one user who used AppBuilder in the last month" do
      assert_equal 1, User.last_month.size
    end

    should "show that there are three users who used AppBuilder in the last 6 months" do
      assert_equal 3, User.last_6_months.size
    end

    should "show that there are seven users who used AppBuilder in the last 7 years" do
      assert_equal 7, User.last_year.size
    end

    should "show that there two users who last used AppBuilder at one point between August 15, 2013 and September 17, 2013" do
      assert_equal 2, User.used_between(Date.new(2013,8,15), Date.new(2013,9,17)).size
    end

    should "show that there are 7 old users since May 11, 2012" do
      assert_equal 7, User.old_users_since(Date.new(2012,5,11)).size
    end

    should "show that there are 3 new users since May 11, 2012" do
      assert_equal 3, User.new_users_since(Date.new(2012,5,11)).size
    end

    should "show that there is 1 new user from July 5, 2010 and July 8, 2010" do
      assert_equal 1, User.new_users_between(Date.new(2010,7,5), Date.new(2010,7,8)).size
    end

    should "show there are 3 users with visit counts between 40 and 85" do
      assert_equal 3, User.visit_count_between(40,85).size
    end

    should "show there are 10 returning users" do
      assert_equal 10, User.returning_users.size
    end

    should "show there are 0 new users" do
      assert_equal 0, User.new_users.size
    end

  end
end
