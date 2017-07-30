class AddAuthorAndStoryToFragments < ActiveRecord::Migration[5.0]
  def change
    add_reference :fragments, :user, foreign_key: true, index: true
    add_reference :fragments, :story, foreign_key: true, index: true
  end
end
