class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombres
      t.string :apellidos
      t.string :ci
      t.string :cargo
      t.string :telefono_local
      t.string :ext
      t.string :celular
      t.string :correo
      t.string :sucursal
      t.string :departamento
      t.integer :user_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
