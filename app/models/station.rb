class Station < ApplicationRecord
  validates_presence_of    :identifier,
                           :name,
                           :address,
                           :xcoord,
                           :ycoord,
                           :dock_count
  validates_uniqueness_of  :identifier

  has_many :docked_bikes, class_name: :Bike, foreign_key: :current_station_id, primary_key: :identifier
end
