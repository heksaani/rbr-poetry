class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.integer :poem_id

      t.timestamps
    end
  end
end
