require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test relationships
  should belong_to(:visit)

  # test validations
  should validate_presence_of(:visit_id)

  should validate_numericality_of(:visit_id)
  should allow_value(120).for(:visit_id)
  should_not allow_value(0).for(:visit_id)
  should_not allow_value("bad").for(:visit_id)
  should_not allow_value(-20).for(:visit_id)
  should_not allow_value(3.14159).for(:visit_id)

  # set up contexts 
end
