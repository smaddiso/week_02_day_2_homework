class River

  attr_accessor :name, :fish_stock

  def initialize(name)
    @name = name
    @fish_stock = 100
  end

  def fish_in_river_count()
      return @fish_stock.length
  end

  def fish_eaten_by_bear()
    return @fish_stock -= 1
  end





















end
