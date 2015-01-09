class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.text :Content
      t.references :User, index: true

      t.timestamps
    end
  end
end
