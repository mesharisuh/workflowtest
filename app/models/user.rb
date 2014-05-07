class User < ActiveRecord::Base
	has_many :tickets_as_creator, :class_name => 'Ticket', :foreign_key => 'creator_id'
	has_many :tickets_as_responsible, :class_name => 'Ticket', :foreign_key => 'responsible_id'

	EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

	validates_presence_of [:name, :username, :password, :email, :birthdate]


	def self.authenticate(username_or_email="", login_password="")
		if EMAIL_REGEX.match(username_or_email)
			user = User.find_by_email(username_or_email)
		else
			user = User.find_by_username(username_or_email)
		end

		if user && user.match_password(login_password)
			return user
		else
			return false
		end
	end

	def match_password(login_password="")
		password == login_password
	end


end
