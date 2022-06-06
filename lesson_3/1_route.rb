class Route
  attr_accessor :stations_on_route, :start_station, :finish_station

  def initialize(start_station, finish_station)
    @start_station = start_station
    @finish_station = finish_station
    @stations_on_route = [start_station, finish_station]
  end

  def add_station(station)
    @stations_on_route.insert(-2, station)
  end

  def delete_station(station)
    @stations_on_route.delete(station) if station != @start_station && station != @finish_station
  end
end