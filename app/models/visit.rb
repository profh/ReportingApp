class Visit < ActiveRecord::Base
	# relationships
	belongs_to :user
	has_many :visit_actions
	has_one :location
	has_one :browser

	# validations 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
