class PostmanMailer < ApplicationMailer

	def alert_admin
      mail(:to=>"veni.rails@gmail.com",:subject=>"ALERT-Book added")
	end
end
