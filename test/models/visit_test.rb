require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  # test relationships
  should belong_to(:user)
  should have_many(:visit_actions)
  should have_one(:location)
  should have_one(:browser)

  # test validations
  should validate_presence_of(:user_id)

  should validate_numericality_of(:user_id)
  should allow_value(120).for(:user_id)
  should_not allow_value(0).for(:user_id)
  should_not allow_value("bad").for(:user_id)
  should_not allow_value(-20).for(:user_id)
  should_not allow_value(3.14159).for(:user_id)

  should validate_numericality_of(:total_events)
  should allow_value(120).for(:total_events)
  should allow_value(0).for(:total_events)
  should_not allow_value("bad").for(:total_events)
  should_not allow_value(-20).for(:total_events)
  should_not allow_value(3.14159).for(:total_events)

  # set up contexts 
end
