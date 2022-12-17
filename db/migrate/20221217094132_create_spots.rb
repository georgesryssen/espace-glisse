class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :address
      t.string :level

      t.timestamps
    end
  end
end
