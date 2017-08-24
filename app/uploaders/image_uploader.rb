class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave


  def default_url(*args)
   'http://res.cloudinary.com/wearehear/image/upload/v1503523644/qysudnd7ozhjypimuayw.gif'
  end

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # process :convert => 'png'
  # process :tags => ['post_picture']

  # version :standard do
  #   process :resize_to_fill => [100, 150, :north]
  # end

  # version :thumbnail do
  #   resize_to_fit(50, 50)
  # end


  # Choose what kind of storage to use for this uploader:
  # storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
    # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    # example in public/ "/uploads/bouquet/image/11/the-end.png"

  # 'https://s3.amazonaws.com/wearehear/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}'

  # end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
