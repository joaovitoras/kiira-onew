class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :image
      t.integer :stock
      t.text :description
      t.references :sale

      t.timestamps
    end
  end
end
