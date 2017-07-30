class AddAuthorToFragment < ActiveRecord::Migration[5.0]
  def change
    add_column :fragments, :author_id, :integer
  end
end
