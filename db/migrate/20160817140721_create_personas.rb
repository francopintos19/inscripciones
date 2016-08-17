class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :apellido
      t.string :nombre
      t.integer :id_tipo_doc
      t.integer :doc
      t.string :direcc
      t.integer :codido_postal
      t.string :provincia
      t.string :ciudad
      t.string :celular
      t.string :email
      t.boolean :profesional, :default => false
      t.string :titulo_universitario
      t.string :titulo_posgrado
      t.string :especialidad
      t.string :ocupacion
      t.string :institucion
      t.string :cargo
      t.integer :telefono_prof
      t.string :email_prof
      t.boolean :menu_jueves, :default => false
      t.boolean :menu_viernes, :default => false      

      t.timestamps null: false
    end
  end
end
