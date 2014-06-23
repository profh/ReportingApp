class User < ActiveRecord::Base
	# relationships
	has_many :visits
	has_many :visit_actions, through: :visits


	# validations 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
