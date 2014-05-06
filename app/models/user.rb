class User < ActiveRecord::Base
	has_many :tickets_as_creator, :class_name => 'Ticket', :foreign_key => 'creator_id'
	has_many :tickets_as_responsible, :class_name => 'Ticket', :foreign_key => 'responsible_id'

end
