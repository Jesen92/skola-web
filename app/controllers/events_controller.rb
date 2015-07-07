class EventsController < ApplicationController
	include IceCube

	
	respond_to :json
  	helper_method :current_user
  	before_filter :authenticate_user!
	

	def get_events
		@event = current_user.profesor.events


		
		events = []
		@event.each do |event|
			@ponavljaj = ""
			if event.repeat?
				event.days.each do |day|
					@ponavljaj += day.id.to_s+",";
				end

			
				events << {:id => event.id, :title => event.title, :start => event.start,:end => event.end, :dow => @ponavljaj , :ranges => [{:start => event.start_date, :end => event.end_date ? event.end_date : event.start_date}] }
			else 
				events << {:id => event.id, :title => event.title, :start =>event.start_date+" "+event.start,:end =>event.start_date+" "+event.end, :ranges => [{:start => "2000-1-1", :end => "3000-1-1"}] }
			end
		end
	render :text => events.to_json
	end
end