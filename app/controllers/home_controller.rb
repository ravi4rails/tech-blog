class HomeController < ApplicationController
  layout 'landing'
  def index
    @subjects = Subject.all
  end

  def cs_subjects
    @subjects = Subject.where(caterory_id: 1)
  end
end
