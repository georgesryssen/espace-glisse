class ChangeDateToBeDatetimeInLessons < ActiveRecord::Migration[7.0]
  def change
    change_column :lessons, :date, :datetime
  end
end
