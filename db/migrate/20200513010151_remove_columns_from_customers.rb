class RemoveColumnsFromCustomers < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :address1, :string
    remove_column :customers, :address2, :string
    remove_column :customers, :address3, :string
    remove_column :customers, :phone1, :string
    remove_column :customers, :phone2, :string
    remove_column :customers, :fax1, :string
    remove_column :customers, :fax2, :string
    remove_column :customers, :email, :string
    remove_column :customers, :website, :string
  end
end
