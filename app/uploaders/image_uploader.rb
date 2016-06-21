# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  version :thumbnail do
    eager
    resize_to_fit(400, 400)
    cloudinary_transformation :quality => 80
  end

end
