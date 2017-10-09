class CreateAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :alumnos do |t|
      t.integer :cant_horas
      t.references :carrera, foreign_key: true
      t.references :datos_personal, foreign_key: true

      t.timestamps
    end
  end
end
