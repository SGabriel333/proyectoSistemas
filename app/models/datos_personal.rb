class DatosPersonal < ApplicationRecord
  belongs_to :user

  	def user_email
		self.user.blank? ? "" : self.user.email
	end


end
