class AddMedicationsColumnToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :medications, :string
  end
end
