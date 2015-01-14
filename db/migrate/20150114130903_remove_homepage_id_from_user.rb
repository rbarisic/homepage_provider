class RemoveHomepageIdFromUser < ActiveRecord::Migration
  def change
	remove_column :homepages, :user_id
  end
end
