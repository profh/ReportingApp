require 'test_helper'

class VisitTest < ActiveSupport::TestCase
  # test relationships
  should belong_to(:user)
  should have_many(:visit_actions)
  should have_one(:location)
  should have_one(:browser)

  # test validations

  # set up contexts 
end
