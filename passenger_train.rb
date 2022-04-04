# Разбить программу на отдельные классы (каждый класс в отдельном файле)
# Разделить поезда на два типа PassengerTrain и CargoTrain

require "./train"

class PassengerTrain < Train
  def initialize(number)
   @type = :passenger
   super
  end 
end