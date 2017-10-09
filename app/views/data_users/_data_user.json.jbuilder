json.extract! data_user, :id, :nombre, :apeelido, :telefono, :direccion, :correo, :users_id, :created_at, :updated_at
json.url data_user_url(data_user, format: :json)
