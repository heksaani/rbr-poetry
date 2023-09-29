class CreatePoets < ActiveRecord::Migration[7.0]
  def change
    create_table :poets do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end
  end
end
