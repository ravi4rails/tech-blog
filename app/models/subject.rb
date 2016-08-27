class Subject < ActiveRecord::Base
  belongs_to :category
  has_many :articles
  has_many :attachments
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

end
