require 'rails_helper'

RSpec.describe "employees/show", :type => :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :nombres => "Nombres",
      :apellidos => "Apellidos",
      :ci => "Ci",
      :cargo => "Cargo",
      :telefono_local => "Telefono Local",
      :ext => "Ext",
      :celular => "Celular",
      :correo => "Correo",
      :sucursal => "Sucursal",
      :departamento => "Departamento",
      :user_id => 1,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombres/)
    expect(rendered).to match(/Apellidos/)
    expect(rendered).to match(/Ci/)
    expect(rendered).to match(/Cargo/)
    expect(rendered).to match(/Telefono Local/)
    expect(rendered).to match(/Ext/)
    expect(rendered).to match(/Celular/)
    expect(rendered).to match(/Correo/)
    expect(rendered).to match(/Sucursal/)
    expect(rendered).to match(/Departamento/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
