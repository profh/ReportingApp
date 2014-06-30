module Contexts
	module VisitActionContexts
		# assumes create_users and create_visits runs prior 
		def create_visit_actions
			# @va_u3_v2_1 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_2, url: "AppBuilder")
			# @va_u3_v2_2 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_2, url: "AppBuilder/products")
			# @va_u3_v2_3 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_2, url: "AppBuilder/products/1")
			# @va_u3_v2_4 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_2, url: "AppBuilder/products/12")

			# @va_u3_v3_1 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_3, url: "AppBuilder")
			# @va_u3_v3_2 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_3, url: "AppBuilder/products")
			# @va_u3_v3_3 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_3, url: "AppBuilder/search")

			# @va_u3_v4_1 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_4, url: "AppBuilder")
			# @va_u3_v4_2 = FactoryGirl.create(:visit_action, user: @user3, visit: @visit_u3_4, url: "AppBuilder/search")

			@va_u3_v2_1 = FactoryGirl.create(:visit_action, visit: @visit_u3_2, url: "AppBuilder")
			@va_u3_v2_2 = FactoryGirl.create(:visit_action, visit: @visit_u3_2, url: "AppBuilder/products")
			@va_u3_v2_3 = FactoryGirl.create(:visit_action, visit: @visit_u3_2, url: "AppBuilder/products/1")
			@va_u3_v2_4 = FactoryGirl.create(:visit_action, visit: @visit_u3_2, url: "AppBuilder/products/12")

			@va_u3_v3_1 = FactoryGirl.create(:visit_action, visit: @visit_u3_3, url: "AppBuilder")
			@va_u3_v3_2 = FactoryGirl.create(:visit_action, visit: @visit_u3_3, url: "AppBuilder/products")
			@va_u3_v3_3 = FactoryGirl.create(:visit_action, visit: @visit_u3_3, url: "AppBuilder/search")

			@va_u3_v4_1 = FactoryGirl.create(:visit_action, visit: @visit_u3_4, url: "AppBuilder")
			@va_u3_v4_2 = FactoryGirl.create(:visit_action, visit: @visit_u3_4, url: "AppBuilder/search")
		end

		def delete_visit_actions 
			@va_u3_v2_1.delete
			@va_u3_v2_2.delete
			@va_u3_v2_3.delete
			@va_u3_v2_4.delete

			@va_u3_v3_1.delete
			@va_u3_v3_2.delete
			@va_u3_v3_3.delete

			@va_u3_v4_1.delete
			@va_u3_v4_2.delete
		end
	end
end

