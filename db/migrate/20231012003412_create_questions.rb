class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question_title,              null: false
      t.text :question_content,              null: false
      t.integer :language_id,                null: false
      t.references :user,                    null: false, foreign_key: true
      t.timestamps
    end
  end
end
