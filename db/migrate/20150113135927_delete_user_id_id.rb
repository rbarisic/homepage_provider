class DeleteUserIdId < ActiveRecord::Migration
  def change
	remove_column :homepages, :user_id_id
  end
end