namespace :db do 
	desc "Erase and fill database"
	# creating a rake task within db namespace called 'populate'
  	# executing 'rake db:populate' will cause this script to run
	task :populate => :environment do
		# Drop the old db and recreate from scratch
	    Rake::Task['db:drop'].invoke
	    Rake::Task['db:create'].invoke
	    # Invoke rake db:migrate
	    Rake::Task['db:migrate'].invoke
	    Rake::Task['db:test:prepare'].invoke

	    require 'factory_girl_rails'

	    # Step 1: Create some users 
	    # Later...use faker gem if need to make more users 
	    user1 = User.new
	    user1.user_day_since_last = DateTime.new(2012,2,15) 
		user1.user_day_since_first = DateTime.new(2012,1,13)
		user1.user_returning = true 
		user1.user_visit_count = 18
		user1.save!
		
		user2 = User.new
		user2.user_day_since_last = DateTime.new(2014,4,5)
		user2.user_day_since_first = DateTime.new(2011,4,19)
		user2.user_returning = true
		user2.user_visit_count = 112
		user2.save!

		user3 = User.new
		user3.user_day_since_last = DateTime.new(2014,4,23)
		user3.user_day_since_first = DateTime.new(2013,12,10)
		user3.user_returning = true
		user3.user_visit_count = 50
		user3.save!

		user4 = User.new
		user4.user_day_since_last = DateTime.new(2013,12,9)
		user4.user_day_since_first = DateTime.new(2013,4,13)
		user4.user_returning = true
		user4.user_visit_count = 80
		user4.save!

		user5 = User.new
		user5.user_day_since_last = DateTime.new(2014,6,12)
		user5.user_day_since_first = DateTime.new(2012,3,19)
		user5.user_returning = true
		user5.user_visit_count = 202
		user5.save!

		user6 = User.new
		user6.user_day_since_last = DateTime.new(2013,4,9)
		user6.user_day_since_first = DateTime.new(2011,12,29)
		user6.user_returning = true
		user6.user_visit_count = 350
		user6.save!

		user7 = User.new
		user7.user_day_since_last = DateTime.new(2012,5,9)
		user7.user_day_since_first = DateTime.new(2011,11,16)
		user7.user_returning = true
		user7.user_visit_count = 145
		user7.save!

		user8 = User.new
		user8.user_day_since_last = DateTime.new(2013,12,16)
		user8.user_day_since_first = DateTime.new(2010,9,28)
		user8.user_returning = true
		user8.user_visit_count = 200
		user8.save!

		user9 = User.new
		user9.user_day_since_last = DateTime.new(2013,9,12)
		user9.user_day_since_first = DateTime.new(2010,7,6)
		user9.user_returning = true
		user9.user_visit_count = 850
		user9.save!

		user10 = User.new
		user10.user_day_since_last = DateTime.new(2013,8,19)
		user10.user_day_since_first = DateTime.new(2012,5,18)
		user10.user_returning = true
		user10. user_visit_count = 80
		user10.save!


	end
	
end