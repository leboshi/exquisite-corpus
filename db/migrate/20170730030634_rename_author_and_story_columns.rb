class RenameAuthorAndStoryColumns < ActiveRecord::Migration[5.0]
  def change
    change_table :fragments do |t|
      t.rename  :author_id, :author
      t.rename :story_id, :story
      end
  end
end
