class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:side1) do
    @side1
  end
  define_method(:triangle?) do
    if @side1 + @side2 <= @side3
      true
    else
      false
    end
  end
  define_method(:equilateral?) do
    if @side1 = @side2 = @side3
      true
    end
  end
  define_method(:isosceles?) do
    if @side1 != @side2 && @side2 != @side3
      true
    end
  end
end
