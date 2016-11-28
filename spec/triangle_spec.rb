require ('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it ('returns whether the object is a triangle') do
      new_triangle = Triangle.new(15,15,31)
      expect(new_triangle.triangle()).to(eq("This is not a triangle"))
    end
  end
  describe('#equilateral') do
    it ('returns whether a triangle is equilateral') do
      new_triangle = Triangle.new(15,15,15)
      expect(new_triangle.triangle()).to(eq("This is an equilateral"))
    end
  end
  describe ('#isosceles') do
    it('returns whether a triangle is isosceles') do
      new_triangle = Triangle.new(15, 16, 17)
      expect(new_triangle.triangle()).to(eq("This is an isosceles"))
    end
  end
  describe ('#scalene') do
    it('returns whether a triangle is a scalene') do
      new_triangle = Triangle.new(14, 14, 17)
      expect(new_triangle.triangle()).to(eq("This is an scalene"))
    end
  end
end
