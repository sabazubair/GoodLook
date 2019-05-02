class AddTextAndImagesToStylesTable < ActiveRecord::Migration[5.2]
  def change
    change_table :styles do |t|
      t.string :description
      t.string :image
    end
  end
end
