class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.datetime :birthdate
      t.float :weight
      t.string :allergies
      t.integer :user_id
    end
  end
end
