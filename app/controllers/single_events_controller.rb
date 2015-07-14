
class SingleEventsController < ApplicationController
respond_to :json
    helper_method :current_user
    before_filter :authenticate_user!

  

  def get_events
    @event = current_user.profesor.events
    events = []
    @event.each do |event|
        @s_event = event.single_events
        @s_event.each do |s_event|

            @col = "#0066FF"
            @grupa
            @mjesto
            @adresa
            if s_event.group == nil
              @grupa = "";
            else
              @grupa = s_event.group.name
            end

            if event.where == nil
              @mjesto = ""
              @adresa = ""
            else
              @mjesto = s_event.where.name
              @adresa = s_event.where.adress
            end


            if s_event.odrzano? && s_event.date <= Date.today.strftime("%Y-%m-%d")
              @col = "#00FF00"
            elsif !s_event.odrzano? && s_event.date < Date.today.strftime("%Y-%m-%d")
              @col = "#FF0000"
            elsif !s_event.odrzano? && s_event.date == Date.today.strftime("%Y-%m-%d")
              @col = "#FF9900"
            end




        events << {:id => s_event.id, :color => @col, :title => s_event.title, :start => s_event.date+" "+s_event.start,:end =>s_event.date+" "+s_event.end, :vrijeme => "<p><strong>"+s_event.start+" - "+s_event.end+"</strong></p>" ,:grupa => "<p><strong>Predavanje grupe:</strong></p> "+"<p>"+@grupa+"</p>", :mjesto => "<p><strong>Mjesto predavanja:</strong></p> "+"<p>"+@mjesto+"</p>", :adresa => "<p><strong>Adresa:</strong></p> "+"<p>"+@adresa+"</p>" }
    #  else 
       # events << {:id => event.id, :title => event.title, :start =>event.start_date.to_s+" "+event.start.to_s,:end =>event.start_date.to_s+" "+event.end.to_s , :vrijeme => "<p><strong>"+event.start+" - "+event.end+"</strong></p>" , :grupa => "<p><strong>Predavanje grupe:</strong></p> "+"<p>"+@grupa+"</p>", :mjesto => "<p><strong>Mjesto predavanja:</strong></p> "+"<p>"+@mjesto+"</p>", :adresa => "<p><strong>Adresa:</strong></p> "+"<p>"+@adresa+"</p>", :ranges => [{:start => "2000-1-1", :end => "3000-1-1"}] }
    #  end
    end
  render :text => events.to_json
  end
end
end

