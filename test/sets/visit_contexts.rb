module Contexts
	module VisitContexts
		# assumes create_users runs prior 
		def create_visits
			@visit_u3_1 = FactoryGirl.create(:visit, user: @user3, first_action_time: DateTime.new(2014,3,23,5,30), last_action_time: DateTime.new(2014,3,23,6,23))
			@visit_u3_2 = FactoryGirl.create(:visit, user: @user3, first_action_time: DateTime.new(2014,3,24,4,30), last_action_time: DateTime.new(2014,3,24,6,23))
			@visit_u3_3 = FactoryGirl.create(:visit, user: @user3, first_action_time: DateTime.new(2014,3,25,7,30), last_action_time: DateTime.new(2014,3,25,8,23))
			@visit_u3_4 = FactoryGirl.create(:visit, user: @user3, first_action_time: DateTime.new(2014,3,26,8,30), last_action_time: DateTime.new(2014,3,26,6,23))
			@visit_u3_5 = FactoryGirl.create(:visit, user: @user3, first_action_time: DateTime.new(2014,3,27,9,30), last_action_time: DateTime.new(2014,3,27,11,23))

			@visit_u4_1 = FactoryGirl.create(:visit, user: @user4, first_action_time: DateTime.new(2013,3,23,5,32), last_action_time: DateTime.new(2013,3,23,6,56))
			@visit_u4_2 = FactoryGirl.create(:visit, user: @user4, first_action_time: DateTime.new(2013,3,24,4,14), last_action_time: DateTime.new(2013,3,24,6,48))
			@visit_u4_3 = FactoryGirl.create(:visit, user: @user4, first_action_time: DateTime.new(2013,3,25,7,19), last_action_time: DateTime.new(2013,3,25,8,37))
		end

		def delete_visits
			@visit_u3_1.delete 
			@visit_u3_2.delete
			@visit_u3_3.delete
			@visit_u3_4.delete
			@visit_u3_5.delete

			@visit_u4_1.delete
			@visit_u4_2.delete
			@visit_u4_3.delete
		end
	end
end

