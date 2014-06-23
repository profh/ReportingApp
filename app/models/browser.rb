class Browser < ActiveRecord::Base
	# relationships
	belongs_to :visit

	# validations 
	validates :visit_id, presence: true, numericality: { greater_than: 0, only_integer: true }

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
