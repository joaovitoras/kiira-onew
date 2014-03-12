class Drawing < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	mount_uploader :image, ImageUploader
	belongs_to :gallery
end
