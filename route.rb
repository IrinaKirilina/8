  NAME_FORMAT = /^[a-zа-я\d]{3}/i

  # 2. Начальная и конечная станции указываются при создании маршрута
  def initialize(name, first_station, last_station)
    @stations = [first_station, last_station]
    @name = name

    validate!

    register_instance
  end

  # 3. Может добавлять промежуточную станцию в список
  # 2.1. промежуточные могут добавляться между ними.
  def add_station(station)
    stations.insert(-2, station)
  end

  # 4. Может удалять промежуточную станцию из списка
  def delete_station(station)
    stations.delete(station)
  end

  # Метод валидности имени, станций, станций по типу
  def validate!
    validate_name!
    validate_station!(@stations.first, "First station")
    validate_station!(@stations.last, "Last station")

    true
  end

  def validate_name!
    puts name
    raise "Необходимо ввести наимеование маршрута" if name.nil?
    raise "Наимение маршрута должо содержать не менее 3 символов" if name.length < 3
    raise "Неверный формат наименования маршрута" if name !~ NAME_FORMAT
  end

  def validate_station!(station, station_title)
    raise "Необходимо ввести #{station_title}" if station.nil?
  end
end