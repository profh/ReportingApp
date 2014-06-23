require 'test_helper'

class VisitActionTest < ActiveSupport::TestCase
  # test relationships
  should belong_to(:visit)
  should have_one(:performance)
  should have_one(:event)

  # test validations
  should validate_presence_of(:visit_id)
  should validate_presence_of(:user_id)

  should validate_numericality_of(:visit_id)
  should allow_value(120).for(:visit_id)
  should_not allow_value(0).for(:visit_id)
  should_not allow_value("bad").for(:visit_id)
  should_not allow_value(-20).for(:visit_id)
  should_not allow_value(3.14159).for(:visit_id)

  should validate_numericality_of(:user_id)
  should allow_value(120).for(:user_id)
  should_not allow_value(0).for(:user_id)
  should_not allow_value("bad").for(:user_id)
  should_not allow_value(-20).for(:user_id)
  should_not allow_value(3.14159).for(:user_id)

  # set up contexts 
end
