class Alumno < ApplicationRecord
  belongs_to :carrera
  belongs_to :datos_personal


  	def datos_personal_name
		self.datos_personal.blank? ? "" : self.datos_personal.nombre
	end

  	def carrera_name
		self.carrera.blank? ? "" : self.carrera.nombre
	end

end
