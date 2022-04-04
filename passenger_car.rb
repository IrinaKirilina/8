require "./car"
# Вагоны теперь делятся на грузовые и пассажирские (отдельные классы). К пассажирскому поезду можно прицепить только пассажирские, к грузовому - грузовые. 

class PassengerCar < Car
  attr_accessor 
   
  def type
    :passenger
  end
  
end