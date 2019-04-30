class AddDetailsToQuestionChoices < ActiveRecord::Migration[5.2]
  def change
    change_table :question_choices do |t|
      t.string :text
      t.references :style, index: true, foreign_key: true
      t.binary :images
    end
  end
end
