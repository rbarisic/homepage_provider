class RemoveFalseUserIdFromAccounts < ActiveRecord::Migration
  def change
	remove_column :homepages, :User_id
	remove_column :homepages, :user_id_id
  end
end
