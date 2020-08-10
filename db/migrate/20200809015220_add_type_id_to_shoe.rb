class AddTypeIdToShoe < ActiveRecord::Migration[5.2]
  def change
    add_column :shoes, :type_id, :integer
  end
end
