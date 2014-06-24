class User < ActiveRecord::Base
	# relationships
	has_many :visits
	has_many :visit_actions, through: :visits

	# validations 
	validates :user_visit_count, numericality: { greater_than_or_equal_to: 0, only_integer: true } 

	# scopes 
	# returns users who used AppBuilder in the past month
	scope :last_month, -> { where('user_day_since_last >= ?', 1.month.ago) }
	# returns users who used AppBuilder in the last 6 months
	scope :last_6_months, -> { where('user_day_since_last >= ?', 6.month.ago) }
	# returns users who used AppBuilder in the past year 
	scope :last_year, -> { where('user_day_since_last >= ?', 1.year.ago) }
	# returns users who used AppBuilder in between date1 and date2
	scope :used_between, ->(date1, date2) { where('user_day_since_last >= ? and user_day_since_last <= ?', date1, date2)}
	# returns old users since date
	scope :old_users_since, ->(date) { where('user_day_since_first <= ?', date) }
	# returns new users since
	scope :new_users_since, ->(date) { where('user_day_since_first >= ?', date) }
	# returns new users between date1 and date2
	scope :new_users_between, ->(date1, date2) { where('user_day_since_first >= ? and user_day_since_first <= ?', date1, date2)}
	# returns users arranged by visit count (descending, high to low)
	# manually tested, no test in user_test
	scope :by_visit_count_d, -> { order('user_visit_count DESC') }
	# returns users arranged by visit count (ascneding, low to high, ascending)
	# manually tested, no test in user_test
	scope :by_visit_count_a, -> { order('user_visit_count ASC') }
	# returns users between lower bound and upper bound visit counts (inclusive)
	scope :visit_count_between, ->(l_bound, u_bound) { where('user_visit_count >= ? and user_visit_count <= ?', l_bound, u_bound)}
	# returns returning users 
	scope :returning_users, -> { where(user_returning: true) }
	# returns new users 
	scope :new_users, -> { where(user_returning: false) }
	# returns users ordered by last time used 
	# manually tested, no test in user_test
	scope :recent_users, -> { order('user_day_since_last DESC') }
	# returns users ordered by last time used 
	# manually tested, no test in user_test
	scope :oldest_users, -> { order('user_day_since_last ASC') }

	# methods 
	# # returns amount of time between first and last minute
	# def user_for
	# end

	# callbacks 

	# private methods for validations, etc
	private
end
