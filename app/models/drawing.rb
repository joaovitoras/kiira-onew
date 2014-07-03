class Drawing < ActiveRecord::Base
	extend FriendlyId
	Rails.application.routes.url_helpers

	before_save validates :name, presence: true, uniqueness: true
	before_save validates :description, presence: true
	before_save validates :slug, presence: true, uniqueness: true
	before_save validates :gallery, presence: true
	before_save validates :image, presence: true
	after_update :clear_cache
	after_save :clear_cache

	friendly_id :name, use: :slugged
	mount_uploader :image, ImageUploader
	belongs_to :gallery

	self.per_page = 16

	def clear_cache
		FileUtils.rm_rf(Dir.glob('public/cache/*'))	
	end
end
