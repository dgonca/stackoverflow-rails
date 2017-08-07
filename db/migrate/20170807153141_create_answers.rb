class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :content, null: false
      t.integer :author_id, null: false, foreign_key: true
      t.integer :question_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
