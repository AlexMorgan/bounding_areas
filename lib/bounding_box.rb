require 'pry'
class BoundingBox
  attr_accessor :left, :bottom, :width, :height
  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @width = width
    @height = height
  end

  def right
    @left + @width
  end

  def top
    @bottom + @height
  end

  def contains_point?(x, y)
    if x.between?(@left, right) && y.between?(@bottom, top)
      return true
    else
      return false
    end
  end
end
