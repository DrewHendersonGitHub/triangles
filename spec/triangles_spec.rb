require 'rspec'
require 'triangles'

describe '#Triangle' do
  describe('#equilateral') do
    it('returns true when all sides are equal') do
      obj = Triangle.new(5, 5, 5)
      expect(obj.equilateral?).to(eq(true))
    end
  end
  
  describe('#isosceles') do
    it('returns true when only two of the sides are equal') do
      obj = Triangle.new(5, 10, 5)
      expect(obj.isosceles?).to(eq(true))
    end
  end
  
  describe('#scalene') do
    it('returns true when none of the sides are equal') do
      obj = Triangle.new(3, 4, 5)
      expect(obj.scalene?).to(eq(true))
    end
  end
  
  describe('#is_triangle') do
    it('returns true if it is not a triangle') do
      obj = Triangle.new(3, 4, 15)
      expect(obj.is_triangle?).to(eq(true))
    end
  end  
end