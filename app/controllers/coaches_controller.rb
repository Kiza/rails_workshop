class CoachesController < ApplicationController
    
    before_action :find_event
    
    def all
        @coaches = Coach.all
    end
    
    #Show all coach
    def index
        @coaches = @event.coaches
        puts 'Printing coach'
        puts @coaches.inspect
    end
    
    def show
        @coach = Coach.find(params[:coach_id])
    end
    
    def update
        c = Coach.find(params[:coach_id])
        c.name = params[:name]
        c.job = params[:job]
        c.save
    end
    
    def destroy
        Coach.find(params[:coach_id]).destroy
    end
    
    #Create a new coach
    def create
        c = @event.coaches.new
        c.name = params[:name]
        c.job = params[:job]
        c.save
    end
    
    private
    def find_event
        @event = Event.find(params[:event_id]) 
    end
end