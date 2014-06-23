require 'test_helper'

class VisitActionTest < ActiveSupport::TestCase
  # test relationships
  should belong_to(:visit)
  should have_one(:performance)
  should have_one(:event)

  # test validations

  # set up contexts 
end
