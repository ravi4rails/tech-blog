class AttachmentsController < ApplicationController

  def destroy
    @attachment = Attachment.find(params[:id])
    @subject = @attachment.subject
    @attachment.destroy
    redirect_to subject_path(@subject)
  end

end