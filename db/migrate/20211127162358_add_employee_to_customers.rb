class AddEmployeeToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :employee, :string
  end
end
