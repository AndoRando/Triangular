require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangular?") do
    it("return false if it is not a triangle") do
      test_triangle = Triangle.new(2, 2, 8)
      expect(test_triangle.triangular?()).to(eq(false))
    end
    it("return 1 if it is an equilateral") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.triangular?()).to(eq(1))
    end
  end
end
