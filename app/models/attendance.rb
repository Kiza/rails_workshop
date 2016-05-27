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

class Attendance < ActiveRecord::Base
  belongs_to :user
  
  belongs_to :event
  
  VALID_USER_TYPE = %w(ADMIN STUDENT)
  
  #validations
  validates :user_type, inclusion: { in: VALID_USER_TYPE }, presence: true
  validates :has_attended, inclusion: { in: [true, false] }
  
  
end
