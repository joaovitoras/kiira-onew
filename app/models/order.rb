# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  user_name        :string(255)
#  user_mail        :string(255)
#  product_id       :integer
#  facebook_contact :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#

class Order < ActiveRecord::Base
  belongs_to :product
end
