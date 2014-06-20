class Task < ActiveRecord::Base
	validates :description, presence: true, length: {maximum: 255}
	validates :priority, presence:true
end
