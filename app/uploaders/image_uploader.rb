class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :dropbox
  else
    storage :file
  end

  version :home do
    process :resize_to_fit => [360,230]
  end

  version :drawings do
    process :resize_to_fit => [163,150]
  end


  def store_dir
    "public/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
