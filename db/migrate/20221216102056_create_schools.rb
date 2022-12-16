class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :description
      t.string :opening
      t.float :rating

      t.timestamps
    end
  end
end
