require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test relationships
  should have_many(:visits)
  should have_many(:visit_actions).through(:visits)

  # test validations

  # set up contexts 
end
