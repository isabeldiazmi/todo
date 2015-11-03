require_relative "modelo"
require_relative "vista"

#CONTROLADOR
class Responsabilidades
  def initialize(lista)
    @modelo = Modelo.new(lista)
    @lista = @modelo.read_csv
  end

  def pantalla
    vista = Vista.new
    vista.interfaz(@lista)
  end

# def delete(n)
# @lista
# end

  def complete(n)
    @lista[n-1].completed = true
  end

  def add(str)
    @modelo.add_csv(str)
  end

end

lista = ["estudiar eco", "lab materiales", "tarea circuitos", "estudiar fourier"]
cosas = Responsabilidades.new(lista)
cosas.pantalla
cosas.complete(2)
cosas.pantalla
cosas.add("aprender ruby")
cosas.pantalla