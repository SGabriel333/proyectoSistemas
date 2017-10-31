class CreateUniversitarios < ActiveRecord::Migration[5.1]
  def change
    create_table :universitarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :ci
      t.string :correo
      t.integer :cant_horas
      t.references :carrera, foreign_key: true

      t.timestamps
    end
  end
end
