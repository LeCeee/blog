class UserMailer < ApplicationMailer

	def newcomment
		to: @comment.user.email
		subject: "comment"
	end

end
