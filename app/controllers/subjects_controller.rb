class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy, :subject_attachment]
  before_action :attachment_params, only: [:add_new_attachment]

  def index
    @subjects = Subject.all
  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def edit
  end

  def create
    @subject = Subject.new(subject_params)

    respond_to do |format|
      if @subject.save
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
        format.json { render :show, status: :created, location: @subject }
      else
        format.html { render :new }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject }
      else
        format.html { render :edit }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to subjects_url, notice: 'Subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_new_attachment
    @attachment = Attachment.create(attachment_params)
    respond_to do |format|
      format.js
    end
  end

  def subject_attachment
  end

  private

    def set_subject
      @subject = Subject.friendly.find(params[:id])
    end

    def attachment_params
      params.require(:add_new_attachment).permit(:subject_id, :title, :description, :attachment)
    end

    def subject_params
      params.require(:subject).permit(:name, :category_id, :image, :yt_link)
    end
end
