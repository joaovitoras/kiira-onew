class AddSocialsToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :url_deviantart, :string
    add_column :galleries, :url_printerest, :string
    add_column :galleries, :url_instagram, :string
  end
end
