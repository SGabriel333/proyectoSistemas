class CreateDatosPersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :datos_personals do |t|
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :direccion
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
