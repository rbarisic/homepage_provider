class AddRelationshipToHomepageAndAccount < ActiveRecord::Migration
  def change
    add_reference :accounts, :homepage, index: true
    add_reference :homepages, :account, index: true
  end
end
