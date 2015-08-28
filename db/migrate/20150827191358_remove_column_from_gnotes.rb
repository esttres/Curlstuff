class RemoveColumnFromGnotes < ActiveRecord::Migration
  def change
    remove_column :gnotes, :tag_id, :integer
  end
end
