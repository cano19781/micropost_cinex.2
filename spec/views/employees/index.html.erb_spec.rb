require 'rails_helper'

RSpec.describe "employees/index", :type => :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
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
      ),
      Employee.create!(
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
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Nombres".to_s, :count => 2
    assert_select "tr>td", :text => "Apellidos".to_s, :count => 2
    assert_select "tr>td", :text => "Ci".to_s, :count => 2
    assert_select "tr>td", :text => "Cargo".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono Local".to_s, :count => 2
    assert_select "tr>td", :text => "Ext".to_s, :count => 2
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    assert_select "tr>td", :text => "Correo".to_s, :count => 2
    assert_select "tr>td", :text => "Sucursal".to_s, :count => 2
    assert_select "tr>td", :text => "Departamento".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
