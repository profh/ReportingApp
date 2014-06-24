module Contexts
	module UserContexts
		def create_users
			@user1 = FactoryGirl.create(:user)
			@user2 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2014,4,5), user_day_since_first: DateTime.new(2011,4,19), user_returning: true, user_visit_count: 112)
			@user3 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2014,4,23), user_day_since_first: DateTime.new(2013,12,10), user_returning: true, user_visit_count: 50)
			@user4 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2013,12,9), user_day_since_first: DateTime.new(2013,4,13), user_returning: true, user_visit_count: 80)
			@user5 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2014,6,12), user_day_since_first: DateTime.new(2012,3,19), user_returning: true, user_visit_count: 202)
			@user6 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2013,4,9), user_day_since_first: DateTime.new(2011,12,29), user_returning: true, user_visit_count: 350)
			@user7 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2012,5,9), user_day_since_first: DateTime.new(2011,11,16), user_returning: true, user_visit_count: 145)
			@user8 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2013,12,16), user_day_since_first: DateTime.new(2010,9,28), user_returning: true, user_visit_count: 200)
			@user9 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2013,9,12), user_day_since_first: DateTime.new(2010,7,6), user_returning: true, user_visit_count: 850)
			@user10 = FactoryGirl.create(:user, user_day_since_last: DateTime.new(2013,8,19), user_day_since_first: DateTime.new(2012,5,18), user_returning: true, user_visit_count: 80)
		end

		def delete_users
			@user1.delete
			@user2.delete
			@user3.delete
			@user4.delete
			@user5.delete
			@user6.delete
			@user7.delete
			@user8.delete
			@user9.delete
			@user10.delete
		end
	end
end