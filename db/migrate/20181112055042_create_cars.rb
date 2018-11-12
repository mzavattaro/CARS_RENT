class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.integer :year
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
