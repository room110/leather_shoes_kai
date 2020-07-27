class AddShoeImageIdToShoes < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :shoe_image_id, :string
  end
end
