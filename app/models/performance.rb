class Performance < ActiveRecord::Base
	# relationships
	belongs_to :visit_action 

	# validations 
	validates :visit_action_id, presence: true, numericality: { greater_than: 0, only_integer: true } 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
