class VisitAction < ActiveRecord::Base
	# relationships
	belongs_to :visit 
	# belongs_to :user, through: :visit
	has_one :performance 
	has_one :event

	# validations
	validates :visit_id, presence: true, numericality: { greater_than: 0, only_integer: true } 
	# validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true } 

	# scopes 
	# returns visit_actions with specified URL (use for pageviews)
	# need to test 
	scope :with_url, ->(url) { where('url == ?', url) }
	# returns visit_actions with specified referrer URL (use for pageviews)
	# need to test 
	scope :with_referrer_url, ->(url) { where('referrer_url == ?', url) }

	# instance methods 
	# returns the time spent on the visit_action
	# need to test
	def time_on_page
		total_time_on_action
	end

	# def url
	# 	url
	# end

	# class methods
	# returns the average time spent on a page with specified URL
	# need to test
	def self.average_time_on_page(url)
		pageviews = @visit_actions.with_url(url)
		sum = 0.0
		@pageviews.each do |pageview|
			sum =+ pageview.time_on_page 
		end
		return sum / pageviews.size
	end

	def self.pageviews(url)
		print VisitAction.with_url(url).size
		return VisitAction.with_url(url).size
	end

	def self.pageviews_percent(url)
		return VisitAction.pageviews(url).to_f / VisitAction.all.size
	end
	
	# callbacks 

	# private methods for validations, etc
	private
end
