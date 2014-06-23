class Visit < ActiveRecord::Base
	# relationships
	belongs_to :user
	has_many :visit_actions
	has_one :location
	has_one :browser

	# validations 
	validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true } 
	validates :total_events, numericality: { greater_than_or_equal_to: 0, only_integer: true } 

	# scopes 

	# methods 

	# callbacks 

	# private methods for validations, etc
	private
end
