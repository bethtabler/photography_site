class Photo < ActiveRecord::Base
  
  attr_accessible :gallery_id, :name, :image
  belongs_to :gallery
  mount_uploader :image, ImageUploader

  # after_save :enqueue_image

  # def image_name
  # 	File.basename(image.path || image.filename) if image
  # end

  # def enqueue_image
  # 	ImageWorker.perform_async(id, key) if key.present?
  # end

  # class ImageWorker
  # 	include Sidekiq::Worker

  #   def perform(id, key)
  #     photo = Photo.find(id)
  #     photo.key = key
  #     photo.remote_image_url = photo.image.direct_fog_url(with_path: true)
  #     photo.save!
  #   end
  # end

end
