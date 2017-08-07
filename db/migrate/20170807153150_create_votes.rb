class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :voteable_type, null: false
      t.integer :voteable_id, null: false
      t.integer :voter_id, null: false, foreign_key: true
      t.integer :value, null: false
      t.timestamps
    end
  end
end
