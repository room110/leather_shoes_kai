class CreateShoeLeatherRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :shoe_leather_relationships do |t|
      t.integer :shoe_id
      t.integer :leather_id

      t.timestamps
    end
  end
end
