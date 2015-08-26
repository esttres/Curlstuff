class CreateGnotes < ActiveRecord::Migration
  def change
    create_table :gnotes do |t|
      t.string :title
      t.text :body
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
