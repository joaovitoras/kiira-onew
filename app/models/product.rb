# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :string(255)
#  image       :string(255)
#  stock       :integer
#  description :text
#  sale_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  slug        :string(255)
#

class Product < ActiveRecord::Base
  	belongs_to :sale
	extend FriendlyId

	before_save validates :name, :image, :description, :price, :stock, presence: true

	friendly_id :name, use: :slugged
	mount_uploader :image, ImageUploader
end
