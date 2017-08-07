class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false
      t.integer :author_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
