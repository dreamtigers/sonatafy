class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.money :price
      t.integer :state

      t.timestamps
    end
  end
end
