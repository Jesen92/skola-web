class EventsController < ApplicationController
	include IceCube

	
	respond_to :json
  	helper_method :current_user
  	before_filter :authenticate_user!
	
	def get_events
		@event = current_user.profesor.events
		
		events = []
		@event.each do |event|
			events << {:id => event.id, :title => event.title, :start => event.start_at,:end => event.end_at }
		end
	render :text => events.to_json
	end
end