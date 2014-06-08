require 'pry'
require_relative 'bounding_box'
class BoundingArea
  attr_reader :area
  def initialize(area)
    @area = area
  end

  def contains_point?(x, y)
    if @area == []
      return false
    end

    @area.each do |box|
      return box.contains_point?(x,y)
    end
  end

end
