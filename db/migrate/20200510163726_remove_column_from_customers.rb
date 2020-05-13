class RemoveColumnFromCustomers < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :address, :string
  end
end
