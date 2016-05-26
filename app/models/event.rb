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

class Event < ActiveRecord::Base
    
     # associations
    has_many :attendances
    has_many :coaches
    has_many :users, through: :attendances
    
    # validations
    validates :title, presence: true, length: { in: 2..255 }
    validates_datetime :date
    
    def admin_users
        users.where('attendances.user_type' => 'ADMIN')
    end

    def student_attendances
        attendances.where(user_type: 'STUDENT')
    end

    def attendance_rate
        total_attendance = student_attendances.count
        actual_attendance = student_attendances.where(has_attended: true).count
        "#{actual_attendance} out of #{total_attendance}"
    end
    
    def event_venue
        venue
    end
    
    def event_price
        price
    end
    
end
