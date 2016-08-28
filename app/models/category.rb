class Category < ActiveRecord::Base
  has_many :subjects
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

end
