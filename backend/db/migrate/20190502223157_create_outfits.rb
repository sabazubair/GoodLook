class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.integer :style_id
      t.string :image

      t.timestamps
    end
  end
end
