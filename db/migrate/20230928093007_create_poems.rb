class CreatePoems < ActiveRecord::Migration[7.0]
  def change
    create_table :poems do |t|
      t.string :name
      t.string :style
      t.text :poem
      t.integer :poet_id

      t.timestamps
    end
  end
end
