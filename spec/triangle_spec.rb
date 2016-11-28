require ('rspec')
require('triangle')

describe(Triangle) do
  describe ('#side1') do
    it ('returns the side1 property of the object') do
      new_triangle = Triangle.new(12, 14, 24)
      expect(new_triangle.side1()).to(eq(12))
    end
  end
  describe('#triangle?') do
    it ('returns whether the object is a triangle') do
      new_triangle = Triangle.new(15,15,29)
      expect(new_triangle.triangle?()).to(eq(false))
    end
  end
  describe('#equilateral') do
    it ('returns whether a triangle is equilateral') do
      new_triangle = Triangle.new(15,15,15)
      expect(new_triangle.equilateral?()).to(eq(true))
    end
  end
  describe ('#isosceles') do
    it('returns whether a triangle is isosceles') do
      new_triangle = Triangle.new(15, 16, 17)
      expect(new_triangle.isosceles?()).to(eq(true))
    end
  end
end
