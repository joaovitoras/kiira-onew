# == Schema Information
#
# Table name: galleries
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text
#  slug           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  url_deviantart :string(255)
#  url_printerest :string(255)
#  url_instagram  :string(255)
#  image          :string(255)
#

class Gallery < ActiveRecord::Base
	extend FriendlyId

	attr_accessible :name, :description, :slug, :image
	
	before_save validates :name, presence: true, uniqueness: true
	before_save validates :description, presence: true
	before_save validates :slug, presence: true, uniqueness: true
	before_save validates :image, presence: true

	friendly_id :name, use: :slugged
	mount_uploader :image, ImageUploader
	has_many :drawings
end
