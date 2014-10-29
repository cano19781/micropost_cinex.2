json.array!(@employees) do |employee|
  json.extract! employee, :id, :nombres, :apellidos, :ci, :cargo, :telefono_local, :ext, :celular, :correo, :sucursal, :departamento, :user_id, :user_id
  json.url employee_url(employee, format: :json)
end
