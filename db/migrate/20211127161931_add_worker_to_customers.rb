class AddWorkerToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :worker, :string
  end
end
