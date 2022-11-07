class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
        t.string :name
        t.integer :price
        t.string :category_id
        t.text :description
        t.string :image_url
    end
  end
end
