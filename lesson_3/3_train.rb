class Train
  attr_accessor :speed, :wagons_quantity, :current_station, :next_station, :previous_station, :type

  def initialize(train_number, type, wagons_quantity)
    @train_number = train_number
    @type = type
    @wagons_quantity = wagons_quantity
    @speed = 0
  end

  def speed_up(speed)
    @speed += speed if speed > 0
  end

  def stop
    @speed = 0
  end

  def hook_wagon
    @wagons_quantity += 1 if @speed.zero?
  end

  def unhook_wagon
    @wagons_quantity -= 1 if @speed.zero? && @wagons_quantity > 0
  end

  def add_route(route)
    @current_station.send_train(self) if @current_station
    @route = route
    @route.start_station.take_train(self)
    @current_station = @route.start_station
    @next_station = @route.stations_on_route[1]
  end

  def move_forward
    return if @current_station == @route.finish_station

    @current_station.send_train(self)
    @next_station.take_train(self)
    @previous_station = @current_station
    @current_station = @next_station
    @next_station = @route.stations_on_route[@route.stations_on_route.index(@current_station) + 1]
  end

  def move_back
    return if @current_station == @route.start_station
   
    @current_station.send_train(self)
    @previous_station.take_train(self)
    @next_station = @current_station
    @current_station = @previous_station
    @previous_station = @route.stations_on_route[@route.stations_on_route.index(@current_station) - 1]
  end

end