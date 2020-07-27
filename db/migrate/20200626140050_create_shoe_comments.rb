class CreateShoeComments < ActiveRecord::Migration[5.2]
  def change
    create_table :shoe_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :shoe_id
      t.integer :shoe_image_id

      t.timestamps
    end
  end
end
