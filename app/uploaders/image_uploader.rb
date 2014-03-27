# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

 storage :dropbox

  def store_dir
    "kiira-app-uploaders/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
