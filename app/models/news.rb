# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  side       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class News < ActiveRecord::Base
end
