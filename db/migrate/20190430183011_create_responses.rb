class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :question, index: true, foreign_key: true
      t.references :question_choice, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
