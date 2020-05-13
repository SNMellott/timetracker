class AddColumnsToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :address1, :string
    add_column :customers, :address2, :string
    add_column :customers, :address3, :string
    add_column :customers, :phone1, :string
    add_column :customers, :phone2, :string
    add_column :customers, :fax1, :string
    add_column :customers, :fax2, :string
    add_column :customers, :email, :string
    add_column :customers, :website, :string
  end
end
