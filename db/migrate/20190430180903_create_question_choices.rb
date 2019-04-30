class CreateQuestionChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :question_choices do |t|
      t.references :question, index: true, foreign_key: true
    end
  end
end
