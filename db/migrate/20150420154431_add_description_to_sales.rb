class AddDescriptionToSales < ActiveRecord::Migration
  def change
    add_column :sales, :description, :text
  end
end
