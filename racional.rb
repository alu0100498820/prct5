# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion

  attr_reader :x, :y # x es el numerador
                     # y es el denominador

  def initialize(x,y)
    @x,@y = x, y

    mcm = gcd(x, y)

    @x = x/mcm
    @y = y/mcm

  end

  def to_s        
    "#{@x}/#{@y}"   
  end

  def suma(other)  # SUMA       
      x = (@x * other.y) + (@y * other.x)
      y = @y * other.y
      Fraccion.new(x, y)
      
  end
  	
  def resta(other)  # RESTA              
      x = (@x * other.y) - (@y * other.x)
      y = @y * other.y
      Fraccion.new(x, y)
            
  end
  
  def multipl(other)  #MULTIPLICACION
      x = @x * other.x
      y = @y * other.y
      Fraccion.new(x, y)
  end
 
  def div(other)  #DIVISION
      x = @x * other.y
      y = @y * other.x
      Fraccion.new(x, y)
  end

end

 
 #Mostramos los Resultados

  #x = Fraccion.new(2, 5)
  #y = Fraccion.new(3, 6)
  #puts "RESULTADOS";
  #puts "Valor de x:"; puts x
  #puts "Valor de y:"; puts y
  #puts "El valor de la suma es:"; puts x.suma(y)
  #puts "El valor de la resta es:"; puts x.resta(y)
  #puts "El valor de la multiplicacion es:"; puts x.multipl(y)
  #puts "El valor de la division es:"; puts x.div(y)
