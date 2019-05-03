class AddTextandLinkToOutfits < ActiveRecord::Migration[5.2]
  def change
    change_table :outfits do |t|
      t.string :text
      t.string :link
    end
  end
end
