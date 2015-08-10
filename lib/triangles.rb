class Triangle
  define_method(:initialize) do | side_moe, side_larry, side_curly |
    @side_moe = side_moe
    @side_larry = side_larry
    @side_curly = side_curly
    @triarray = [@side_moe, @side_larry, @side_curly]
    @triarray.sort!()
  end

  define_method(:triangular?) do
    (@triarray[0] + @triarray [1]).>=(@triarray[2])
  end
end
