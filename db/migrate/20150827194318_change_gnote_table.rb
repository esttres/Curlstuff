class ChangeGnoteTable < ActiveRecord::Migration
  def change
    remove_column :taggings, :note_id, :integer
    add_column :taggings, :gnote_id, :integer
  end
end
