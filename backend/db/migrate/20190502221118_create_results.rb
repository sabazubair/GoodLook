class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.integer :style_id
      t.integer :user_id

      t.timestamps
    end
  end
end
