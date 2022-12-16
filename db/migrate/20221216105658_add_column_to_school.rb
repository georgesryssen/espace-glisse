class AddColumnToSchool < ActiveRecord::Migration[7.0]
  def change
    add_column :schools, :website, :string
  end
end
