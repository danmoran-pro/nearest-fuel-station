class CreateStation < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.text :fuel_type
      t.string :access_days_time_fr

      t.timestamps
    end
  end
end
