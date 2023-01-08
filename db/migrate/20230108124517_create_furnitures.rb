class CreateFurnitures < ActiveRecord::Migration[6.1]
  def change
    create_table :furnitures do |t|
      t.string :name
      t.string :space_category
      t.integer :price
      t.integer :image_link
    end
  end
end
