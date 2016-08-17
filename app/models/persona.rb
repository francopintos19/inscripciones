class Persona < ActiveRecord::Base

	validates :nombre, :apellido, :doc, :direcc, :codido_postal, :provincia, :ciudad, :celular, :email, presence: true
	validates :doc, :email, uniqueness: { case_sensitive: false,message: "ya se encuentra registrado."}
	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	
validate :validar_mat
  def validar_mat
    if (profesional==true)
    	if (titulo_universitario=="")
   			errors.add(:titulo_universitario," Complete el campo.")		
    	end
    	if (titulo_posgrado=="")
   			errors.add(:titulo_posgrado," Complete el campo.")		
    	end
    	if (especialidad=="")
   			errors.add(:especialidad," Complete el campo.")		
    	end
    	if (ocupacion=="")
   			errors.add(:ocupacion," Complete el campo.")		
    	end
    	if (institucion=="")
   			errors.add(:institucion," Complete el campo.")		
    	end
    	if (cargo=="")
   			errors.add(:cargo," Complete el campo.")		
    	end
    	if (telefono_prof=="")
   			errors.add(:telefono_prof," Complete el campo.")		
    	end
    	if (email_prof=="")
   			errors.add(:email_prof," Complete el campo.")		
    	end
    end
  end

end