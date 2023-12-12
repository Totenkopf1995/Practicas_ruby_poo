class Motion
  def initialize(start, stop)
    @start = start
    @stop = stop
  end
  attr_accessor :start, :stop
  
  def print_start
    puts 'Iniciando...'
    puts "#{@start}"
  end
  def print_stop
    puts 'Parando...'
    puts "#{@stop}"
  end
  def self.legal_advice
    puts 'La pirateria o difucion de este contenido sin autorizacion esta prohibida.'
  end
end

class Vehicle < Motion
  def initialize(start, stop, switched_on, switched_off)
    super(start, stop)
    @switched_on = switched_on
    @switched_off = switched_off
  end
  attr_accessor :switched_on, :switched_off
  
  def print_switched_on
    puts 'Encendiendo...'
    puts "#{switched_on}"
  end
  def print_switched_off
    puts 'Apagando...'
    puts "#{switched_off}"
  end
end

class Human < Motion
  def initialize(start, stop, walking, still)
    super(start, stop)
    @walking = walking
    @still = still
  end
  attr_accessor :walking, :still
  
  def print_walking
    puts 'Caminando...'
    puts "#{walking}"
  end
  def print_still
    puts 'Parando...'
    puts "#{still}"
  end
end

Motion.legal_advice

motion = Motion.new('inicio', 'fin')
motion.print_start
puts
motion.print_stop

vehicle = Vehicle.new('encender', 'apagar', 'encendido', 'apagado')
vehicle.print_switched_on
puts
vehicle.print_switched_off

human = Human.new('caminar', 'detenerse', 'caminando', 'detenido')
human.print_walking
puts
human.print_still