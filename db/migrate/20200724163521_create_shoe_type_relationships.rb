class CreateShoeTypeRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :shoe_type_relationships do |t|
      t.integer :shoe_id
      t.integer :type_id

      t.timestamps
    end
  end
end
