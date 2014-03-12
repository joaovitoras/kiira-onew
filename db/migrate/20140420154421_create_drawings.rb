class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :name
      t.text   :description
      t.references :gallery
      t.string :slug
      t.timestamps
    end
    add_index :drawings, :slug, unique: true
  end
end
