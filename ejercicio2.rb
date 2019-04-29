module Formula

  def perimetro
    case self
      when Rectangulo
        perimetro = 2 * (@base + @altura)
        "El perímetro del rectángulo es #{perimetro}.\n"
      when Cuadrado
        perimetro = @lado * 4
        "El perímetro del cuadrado es #{perimetro}.\n"
    end
  end

  def area
    case self
      when Rectangulo
        area = @base * @altura
        "El área del rectángulo es #{area}.\n"
      when Cuadrado
        area = @lado * @lado
        "El área del cuadrado es #{area}.\n"
    end
  end

end

class Rectangulo
    attr_reader :base, :altura
    include Formula

    def initialize(base, altura)
      @base = base
      @altura = altura
    end

    def lados
      p "La medida de los lados es: base: #{@base}, altura: #{@altura}"
    end
end

class Cuadrado
  attr_reader :lado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    p "La medida de la arista es #{@lado}"
  end
end

cuadrado = Cuadrado.new(2)

print cuadrado.lados
print cuadrado.perimetro
print cuadrado.area

rectangulo = Rectangulo.new(10, 4)

print rectangulo.lados
print rectangulo.perimetro
print rectangulo.area
