class Train < ApplicationRecord
  has_many :tickets 
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
end
