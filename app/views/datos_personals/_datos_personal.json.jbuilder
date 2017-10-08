json.extract! datos_personal, :id, :nombre, :apellido, :telefono, :direccion, :user_id, :created_at, :updated_at
json.url datos_personal_url(datos_personal, format: :json)
