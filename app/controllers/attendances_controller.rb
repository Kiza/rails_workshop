# == Schema Information
#
# Table name: attendances
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  event_id     :integer
#  has_attended :boolean
#  user_type    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

=begin class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  # GET /attendances
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  def create
    @attendance = Attendance.new(attendance_params)

    if @attendance.save
      redirect_to @attendance, notice: 'Attendance was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /attendances/1
  def update
    if @attendance.update(attendance_params)
      redirect_to @attendance, notice: 'Attendance was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /attendances/1
  def destroy
    @attendance.destroy
    redirect_to attendances_url, notice: 'Attendance was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attendance_params
      params.require(:attendance).permit(:user_id, :event_id, :has_attended, :user_type)
    end
end
=end

class AttendancesController < ApplicationController
    before_filter :authenticate_user!
  before_action :set_attendance, only: [:show, :edit, :update]
  def index
    @attendances = Attendance.all
  end

  def show
  end

  def update
    if @attendance.update(attendance_params)
      redirect_to @attendance, notice: 'Attendance was successfully updated.'
    else
      render :edit
    end
  end

  def edit
  end

  private

  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  def attendance_params
    params.require(:attendance).permit(:has_attended)
  end
end



