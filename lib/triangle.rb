class Triangle
  attr_reader :kind

  def initialize (a, b, c)
    a, b, c = [a, b, c].sort
    if a <= 0 || a + b <= c
      raise TriangleError
    elsif a == b && b == c
      @kind = :equilateral
    elsif a == b || b == c
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end
end

class TriangleError < StandardError
 
end