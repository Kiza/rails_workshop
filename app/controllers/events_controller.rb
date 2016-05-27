# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class EventsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_event, only: [:show, :edit, :update, :destroy, :update_attendance]
  
  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/1
  def show
  end  
  
  def update_attendance
    attended_hash = params[:attendance]
    @event.attendances.each do |attendance|
      has_attended = attended_hash.key?(attendance.id.to_s)
      if has_attended != attendance.has_attended
        if has_attended
          attendance.update(has_attended: true)
        else
          attendance.update(has_attended: false)
        end
      end
    end
    redirect_to @event, notice: 'Event was successfully updated.'
  end

  # GET /events/new
  def new
    @event = Event.new
    2.times do
      @event.coaches.build
    end
    
    3.times do
      attendance = @event.attendances.build(user_type: 'STUDENT')
      attendance.build_user
    end
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(
        :title, :description, :date,
        attendances_attributes: [:id, :user_type, :_destroy, :has_attended, :user_id], 
        coaches_attributes: [:id, :name, :job, :_destroy])
    end
end
