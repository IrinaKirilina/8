# Модуль для проверки валидности в классах

module Valid
  # Mетод возвращает true если объект валидный и false в противном случае
  def valid?
    validate!
    true
  rescue
    false
  end
end