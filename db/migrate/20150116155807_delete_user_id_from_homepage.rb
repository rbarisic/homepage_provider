class DeleteUserIdFromHomepage < ActiveRecord::Migration
  def change
	remove_column :homepages, :Content
	add_column :homepages, :content, :text 
  end
end
