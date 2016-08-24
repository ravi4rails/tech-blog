class Subject < ActiveRecord::Base
  belongs_to :category
  has_many :articles
  has_many :attachments
end
