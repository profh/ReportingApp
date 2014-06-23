class VisitAction < ActiveRecord::Base
	# relationships
	belongs_to :visit 
	has_one :performance 
	has_one :event

	# validations
	validates :visit_id, presence: true, numericality: { greater_than: 0, only_integer: true } 
	validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true } 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
