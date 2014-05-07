class Ticket < ActiveRecord::Base
	belongs_to :creator, :class_name => "User"
	belongs_to :responsible, :class_name => "User"

	validates_presence_of [:title, :content, :creator_id, :responsible_id]
end
