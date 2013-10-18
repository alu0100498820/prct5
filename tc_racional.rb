# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  
  def setup
    @p1 = Fraccion.new(2,5)
    @p2 = Fraccion.new(3,6)
  end
  
  def test_suma
    assert_equal("9/10",  @p1.suma(@p2).to_s)
  end
  
  def test_resta
    assert_equal("9/10",  @p1.resta(@p2).to_s)
  end
  
  def test_multipl
    assert_equal("1/5",  @p1.multipl(@p2).to_s)
  end
  
  def test_div
    assert_equal("8/2",  @p1.div(@p2).to_s)
  end

end
