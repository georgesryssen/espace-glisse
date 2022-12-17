class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.date :date
      t.float :duration
      t.string :level
      t.references :school, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
