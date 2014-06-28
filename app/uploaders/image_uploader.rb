class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :dropbox
  else
    storage :file
  end

  version :home do
    process resize_to_fill: [348,249]
  end

  version :thumb do
    process resize_to_fill: [260,187]
  end
  


  def store_dir
    "public/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
