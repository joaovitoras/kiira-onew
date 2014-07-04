class Drawing < ActiveRecord::Base
	extend FriendlyId

	before_save validates :name, presence: true, uniqueness: true
	before_save validates :description, presence: true
	before_save validates :slug, presence: true, uniqueness: true
	before_save validates :gallery, presence: true
	before_save validates :image, presence: true

	friendly_id :name, use: :slugged
	mount_uploader :image, ImageUploader
	belongs_to :gallery

	self.per_page = 16

	after_update :clear_cache
 
	  def clear_cache
	    ActionController::Base.expire_page("/#{self.slug}")
	  end
end
