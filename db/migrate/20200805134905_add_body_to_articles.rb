class AddBodyToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :body, :string
  end
end
