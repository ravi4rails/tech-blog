class Article < ActiveRecord::Base
  belongs_to :user
  belongs_to :subjects
end
