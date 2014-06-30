class PageController < ApplicationController
	def summary
		@data = Array.new
		@metric = params[:metric]

		@data << @metric
	    respond_to do |format|
		  	format.html 
		  	format.json {render :json => @data}
	  	end
	end

	def overview 

	end 

	def show
		metric = params[:metric]
		startdate = params[:startdate]
		enddate = params[:enddate]

		

		# if(metric == 'pv')  If the metric is page view
		# some query to get the number of page view 

		# detailed summary
		detailed_summary_data = Array.new
		VisitAction.all.each do |visit_action|
			visit_action_data = Hash.new
			visit_action_data["url"] = visit_action.url
			visit_action_data["pageviews"] = VisitAction.pageviews(visit_action.url)
			visit_action_data["pageviews_percent"] = VisitAction.pageviews_percent(visit_action.url)
			detailed_summary_data << visit_action_data
		end
		render :json => detailed_summary_data

		# summary (count)
		summary_data = Array.new
		count_data = Hash.new
		count_data["count"] = VisitAction.all.size
		summary_data << count_data
		# render :json => summary_data


		# overview 
	end

end