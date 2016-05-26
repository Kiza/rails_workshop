class Coach < ActiveRecord::Base
    belongs_to :event
    validates :name, presence: true, length: { in: 2..255 }
    validates :job, presence: true, length: { in: 2..255 }
end