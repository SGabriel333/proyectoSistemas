class CreateDataUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :data_users do |t|
      t.string :nombre
      t.string :apeelido
      t.string :telefono
      t.string :direccion
      t.string :correo
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
