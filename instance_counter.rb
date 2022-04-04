# Mодуль InstanceCounter, содержащий методы класса и инстанс-методы, которые подключаются автоматически при вызове include
module InstanceCounter
  def self.included(base)
    base.extend ClassMethods
    base.include InstanceMethods
  end
  
  attr_reader :instances

  module ClassMethods
    # Метод класса, который возвращает кол-во экземпляров данного класса
    def instances_count
      @instances ||= 0
      @instances += 1
    end

    def instances
      @instances ||= 0
    end
  end

  module InstanceMethods
    # Метод, который увеличивает счетчик кол-ва экземпляров класса и который можно вызвать из конструктора. При этом данный метод не должен быть публичным.

    protected

    def register_instance
      self.class.instances_count
    end
  end
end