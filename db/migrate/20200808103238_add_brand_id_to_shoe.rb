class AddBrandIdToShoe < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :brand_id, :integer
  end
end
