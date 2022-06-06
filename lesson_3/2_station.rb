class Station
  attr_accessor :trains_list

  def initialize(name)
    @name = name
    @trains_list = []
  end

  def take_train(train)
    @trains_list << train
  end

  def send_train(train)
    @trains_list.delete(train)
  end

  def trains_list_by_type(type)
    @trains_list.select { |train| train.type == type }
  end

  def trains_quantity_by_type(type)
    @trains_list.count { |train| train.type == type }
  end
end