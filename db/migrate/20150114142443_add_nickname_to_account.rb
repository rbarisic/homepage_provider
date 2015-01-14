class AddNicknameToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :nickname, :string
  end
end
