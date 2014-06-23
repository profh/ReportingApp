class VisitAction < ActiveRecord::Base
	# relationships
	belongs_to :visit 
	has_one :performance 
	has_one :event

	# validations 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
