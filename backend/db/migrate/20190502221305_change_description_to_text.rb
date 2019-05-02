class ChangeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    remove_column :styles, :description
    change_table :styles do |t|
      t.text :description
    end
  end
end
