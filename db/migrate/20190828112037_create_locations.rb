class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.decimal :lat
      t.decimal :lng
      t.datetime :at
      t.references :vehicle, type: :string, foreign_key: true
      t.timestamps
    end
  end
end
