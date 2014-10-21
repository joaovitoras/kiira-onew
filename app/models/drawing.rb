# == Schema Information
#
# Table name: drawings
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  gallery_id  :integer
#  slug        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  image       :string(255)
#

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
end
