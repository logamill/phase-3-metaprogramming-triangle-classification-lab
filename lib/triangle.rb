class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    
  end
    

  def valid_triangle(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    end
  end


  def kind 
    valid_triangle(side_one, side_two, side_three)
    if side_one == side_two && side_two == side_three
      return :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      return :isosceles
    elsif side_one != side_two && side_two != side_three 
      return :scalene 
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
