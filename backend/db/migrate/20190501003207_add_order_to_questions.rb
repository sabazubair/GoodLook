class AddOrderToQuestions < ActiveRecord::Migration[5.2]
  def change
    change_table :questions do |t|
      t.integer :order, default: 0, null: false
    end
  end
end
