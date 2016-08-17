class TipoDoc < ActiveRecord::Base

validates :nombre, presence: true
#validates :nombre, uniqueness: { case_sensitive: false,message: "ya se encuentra registrado."}

end
