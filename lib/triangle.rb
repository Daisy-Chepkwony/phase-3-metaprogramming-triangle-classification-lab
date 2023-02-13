class Triangle
  class TriangleError < StandardError; end
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    if [a, b, c].min <= 0
      raise TriangleError, "Sides must be greater than 0"
    end
    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError, "The sum of the lengths of any two sides must be greater than the length of the third side"
    end
    @a = a
    @b = b
    @c = c
    
  end
  
  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
end

