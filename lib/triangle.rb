class Triangle
  # write code here

  attr_accessor :length2,:length2,:length3, :kind

    def initialize(length1,length2,length3)     
      @length1 = length1
      @length2 = length2
      @length3 = length3
    end

    def kind
      if @length1+@length2<=@length3 || @length1+@length3<=@length2 || @length2+@length3<=@length1 || @length1 ==0 || @length2 ==0 || @length3 == 0 || @length1 < 0 || @length2 < 0 || @length3 < 0
          raise TriangleError
      elsif @length1 == @length2 && @length1 == @length3
        self.kind = :equilateral
      elsif @length1 == @length2 || @length2 == @length3 || @length1 == @length3
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
    end

  class TriangleError < StandardError
    def message
      "The trangle is invalid"
    end
  end
end
