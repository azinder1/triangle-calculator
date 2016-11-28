class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:triangle) do
    triangle_type = ""
    if @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2 == true
      triangle_type.concat("This is not a triangle")
    elsif (@side1 != @side2) && (@side2 != @side3)
      triangle_type.concat("This is an isosceles")
    elsif @side1 + @side2 == (2 * @side3)
      triangle_type.concat("This is an equilateral")
    elsif (@side1 = @side2 && @side1 != @side3) || (@side2 = @side3 && @side1 != @side3) || (@side1 = @side3 && @side1 != @side2)
      triangle_type.concat("This is an scalene")
    end
    triangle_type
  end
end

# class Triangle
#   define_method(:initialize) do |side1, side2, side3|
#     @sides = [side1, side2, side3].sort
#   end
#   define_method(:type) do
#     if @sides[0] + @sides[1] < @sides[2]
#       'not a triangle'
#     elsif @sides.first == @sides.last
#       'equilateral'
#     elsif @sides[0] == @sides[1] or @sides[1] == @sides[2]
#       'isosceles'
#     else
#       'scalene'
#     end
#   end
# end
