class AddImageToDrawings < ActiveRecord::Migration
  def change
    add_column :drawings, :image, :string
  end
end
