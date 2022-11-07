class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
        t.string :name
        t.integer :price
        t.string :category
        t.string :description
        t.string :image_url
    end
  end
end
