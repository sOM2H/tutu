class CreateRouteRailwayStation < ActiveRecord::Migration[5.2]
  def change
    create_table :route_railway_stations, id: false do |t|
      t.belongs_to :route
      t.belongs_to :railway_station
    end
  end
end
