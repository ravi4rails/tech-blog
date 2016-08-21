class AddSubjectIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subject_id, :integer
  end
end
