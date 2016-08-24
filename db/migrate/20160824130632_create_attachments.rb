class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :title
      t.string :attachment
      t.text :description
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
