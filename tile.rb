require "colorize"

class Tile
  attr_reader :value

  def initialize(value)
    @value = value
    @given = value == 0 ? false : true
  end

  def color
    given? ? :blue : :red
  end

  def given?
    @given
  end

  def to_s
    value == 0 ? " " : value.to_s.colorize(color)
  end

  def value=(new_value)
    if given?
      puts "You can't change the value of a given tile."
    else
      @value = new_value
    end
  end
end


# tile = Tile.new(0)
# p tile.color
# p tile.given?
# p tile.to_s
# p tile.value=(5)
# p tile.value == 5
