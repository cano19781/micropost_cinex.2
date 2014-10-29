require 'rails_helper'

RSpec.describe "employees/new", :type => :view do
  before(:each) do
    assign(:employee, Employee.new(
      :nombres => "MyString",
      :apellidos => "MyString",
      :ci => "MyString",
      :cargo => "MyString",
      :telefono_local => "MyString",
      :ext => "MyString",
      :celular => "MyString",
      :correo => "MyString",
      :sucursal => "MyString",
      :departamento => "MyString",
      :user_id => 1,
      :user => nil
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input#employee_nombres[name=?]", "employee[nombres]"

      assert_select "input#employee_apellidos[name=?]", "employee[apellidos]"

      assert_select "input#employee_ci[name=?]", "employee[ci]"

      assert_select "input#employee_cargo[name=?]", "employee[cargo]"

      assert_select "input#employee_telefono_local[name=?]", "employee[telefono_local]"

      assert_select "input#employee_ext[name=?]", "employee[ext]"

      assert_select "input#employee_celular[name=?]", "employee[celular]"

      assert_select "input#employee_correo[name=?]", "employee[correo]"

      assert_select "input#employee_sucursal[name=?]", "employee[sucursal]"

      assert_select "input#employee_departamento[name=?]", "employee[departamento]"

      assert_select "input#employee_user_id[name=?]", "employee[user_id]"

      assert_select "input#employee_user_id[name=?]", "employee[user_id]"
    end
  end
end
