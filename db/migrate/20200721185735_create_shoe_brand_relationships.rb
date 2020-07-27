class CreateShoeBrandRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :shoe_brand_relationships do |t|
      t.integer :shoe_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
