class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles, id: false do |t|
      t.string :id, null: false
      t.decimal :current_latitude
      t.decimal :current_longitude

      t.timestamps
    end

    add_index :vehicles, :id, unique: true
  end
end
