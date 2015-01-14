class AddAccountIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :account, index: true
    add_reference :users, :homepage, index: true    
  end
end
