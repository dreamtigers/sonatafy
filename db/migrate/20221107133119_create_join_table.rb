class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :cars, :dealerships do |t|
      # t.index [:car_id, :dealership_id]
      t.index [:dealership_id, :car_id]
    end
  end
end
