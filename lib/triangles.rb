class Triangle
  attr_accessor(:side1, :side2, :side3)
  
  def initialize(side1, side2, side3)
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
  end

  def equilateral?
    if (@side1 == @side2) && (@side1 == @side3)
      true
    else
      false
    end
  end

  def isosceles?
    if ((@side1 == @side2) && (@side1 != @side3)) || ((@side1 == @side3) && (@side1 != @side2)) || ((@side2 == @side3) && (@side2 != @side1))
      true
    else
      false
    end
  end

  def scalene?
    if (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
      true
    else
      false
    end
  end

  def is_triangle?
    if (@side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1)
      true
    else
      false
    end
  end
end