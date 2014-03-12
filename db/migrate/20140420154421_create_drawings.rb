class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :nome
      t.text   :description
      t.references :gallery
      t.timestamps
    end
  end
end
