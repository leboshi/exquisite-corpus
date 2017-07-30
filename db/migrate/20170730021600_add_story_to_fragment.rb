class AddStoryToFragment < ActiveRecord::Migration[5.0]
  def change
    add_column :fragments, :story_id, :integer
  end
end
