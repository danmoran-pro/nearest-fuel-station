class AddLongandLatToStations < ActiveRecord::Migration[5.2]
  def change
    add_column :stations, :latitude, :float
    add_column :stations, :longitude, :float
  end
end
