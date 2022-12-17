class AddTownToSpots < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :town, :string
  end
end
