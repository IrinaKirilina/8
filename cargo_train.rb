# Разбить программу на отдельные классы (каждый класс в отдельном файле)
# Разделить поезда на два типа PassengerTrain и CargoTrain

require "./train"

class CargoTrain < Train
  def initialize(number)
   @type = :cargo
   super
  end
end