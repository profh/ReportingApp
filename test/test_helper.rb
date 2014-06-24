require 'simplecov'
SimpleCov.start 'rails'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'turn/autorun'
require 'contexts'

class ActiveSupport::TestCase
	# ActiveRecord::Migration.check_pending!

	include Contexts

	# def deny(condition, msg="")
 #    	# a simple transformation to increase readability IMO
 #   	 	assert !condition, msg
 #  end
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end
