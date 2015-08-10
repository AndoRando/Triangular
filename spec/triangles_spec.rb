require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangular") do
    it("return false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangular()).to(eq(0))
    end
    it("return 1 if it is an equilateral") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.triangular()).to(eq(1))
    end
    it("return 2 if it is an isosceles triangle") do
      test_triangle = Triangle.new(2, 2, 3)
      expect(test_triangle.triangular()).to(eq(2))
    end
    it("return 3 if it's neither equliateral or isoscelese (scalene)") do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.triangular()).to(eq(3))
    end
  end
end
