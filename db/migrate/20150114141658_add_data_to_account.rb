class AddDataToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :first_name, :string
    add_column :accounts, :last_name, :string
    add_column :accounts, :account_type, :boolean
    add_column :accounts, :birthday, :date
    add_column :accounts, :paypal_address, :string
  end
end