class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :name
      t.string :starting
      t.string :image
      t.string :slug

      t.timestamps
    end
  end
end
