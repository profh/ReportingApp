class User < ActiveRecord::Base
	# relationships
	has_many :visits
	has_many :visit_actions, through: :visits

	# validations 
	validates :user_visit_count, numericality: { greater_than_or_equal_to: 0, only_integer: true } 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
