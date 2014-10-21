class Product < ActiveRecord::Base
  	belongs_to :sale
	extend FriendlyId

	before_save validates :name, :image, :description, :price, :stock, presence: true

	friendly_id :name, use: :slugged
	mount_uploader :image, ImageUploader
end
