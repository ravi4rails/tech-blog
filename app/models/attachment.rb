class Attachment < ActiveRecord::Base
  belongs_to :subject
  mount_uploader :attachment, AttachmentUploader
end
