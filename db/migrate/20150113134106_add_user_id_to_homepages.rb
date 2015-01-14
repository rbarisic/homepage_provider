class AddUserIdToHomepages < ActiveRecord::Migration
  def change
    add_reference :homepages, :user_id, index: true
  end
end
