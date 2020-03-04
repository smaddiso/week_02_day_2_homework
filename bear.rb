class Bear

attr_accessor :name, :type, :fish_in_stomach

  def initialize(name, type, fish_in_stomach)
    @name = name
    @type = type
    @fish_in_stomach = []
  end

  def fish_in_stomach_count()
      return @fish_in_stomach.length()
  end

  def eat_fish(fish)
    @fish_in_stomach.push(fish)
  end



















end
