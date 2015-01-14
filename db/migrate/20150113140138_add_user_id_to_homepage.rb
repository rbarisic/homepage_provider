class AddUserIdToHomepage < ActiveRecord::Migration
  def change
    add_reference :homepages, :user, index: true
  end
end
