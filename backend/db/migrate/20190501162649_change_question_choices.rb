class ChangeQuestionChoices < ActiveRecord::Migration[5.2]
  def change
    remove_column :question_choices, :images
    change_table :question_choices do |t|
      t.string :image
    end
  end
end
