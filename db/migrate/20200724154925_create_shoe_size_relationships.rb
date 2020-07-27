class CreateShoeSizeRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :shoe_size_relationships do |t|
      t.integer :shoe_id
      t.integer :size_id

      t.timestamps
    end
  end
end
