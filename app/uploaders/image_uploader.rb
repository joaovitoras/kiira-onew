# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

 

  if Rails.env.production?
    storage :dropbox
  else
    storage :file
  end
  
  def store_dir
    "kiira-app-uploaders/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
