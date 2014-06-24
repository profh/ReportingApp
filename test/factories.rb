FactoryGirl.define do 
	
	factory :user do
		user_day_since_last DateTime.new(2012,2,15) 
		user_day_since_first DateTime.new(2012,1,13)
		user_returning true 
		user_visit_count 18
	end 
	
end