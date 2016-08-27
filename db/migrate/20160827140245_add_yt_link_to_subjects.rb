class AddYtLinkToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :yt_link, :string
  end
end
