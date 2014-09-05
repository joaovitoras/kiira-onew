# == Schema Information
#
# Table name: sales
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  starting    :string(255)
#  image       :string(255)
#  slug        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

class Sale < ActiveRecord::Base
	extend FriendlyId
	has_many :products
	friendly_id :name, use: :slugged

	mount_uploader :image, ImageUploader

	scope :latest,   ->{ order(updated_at: :desc).limit(4) }
end
