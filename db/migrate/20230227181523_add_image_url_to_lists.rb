class AddImageUrlToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :image_url, :text
  end
end
