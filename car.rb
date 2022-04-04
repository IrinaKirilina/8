require "./manufacturer"

# Cоздан класс, который является родителем для классов CargoCar, CargoTrain
class Car
  # Модуль позволяет указывать название компании-производителя и получать его
  include Manufacturer

  # Имеет тип (грузовой/пассажирский)
  attr_accessor :type, :number, :capacity, :reserved_capacity

  # Добавить атрибут общего объема (задается при создании вагона)
  def initialize(number, capacity)
    @capacity = capacity
    @reserved_capacity = 0
    @number = number
  end    

  # Добавить метод, который "занимает места" в вагоне (по одному за раз)
  def reserve_capacity(volume)
    @reserved_capacity += 1 if volume.positive?
  end

  # Добавить метод, возвращающий кол-во свободных мест в вагоне.
  def free_capacity
    capacity - reserved_capacity if capacity.positive?
  end

  # Добавить метод, который возвращает кол-во занятых мест в вагоне
  def reserved_capacity
    @reserved_capacity 
  end
end