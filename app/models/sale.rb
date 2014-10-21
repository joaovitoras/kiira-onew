class Sale < ActiveRecord::Base
	extend FriendlyId
	has_many :products
	friendly_id :name, use: :slugged

	mount_uploader :image, ImageUploader

	scope :latest,   ->{ order(updated_at: :desc).limit(4) }
end
