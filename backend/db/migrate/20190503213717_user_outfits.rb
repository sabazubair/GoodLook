class UserOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_outfits do |t|
      t.integer :user_id
      t.integer :outfit_id
    end
  end
end