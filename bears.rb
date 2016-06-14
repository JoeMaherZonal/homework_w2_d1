class Bear

  attr_reader(:name, :species, :tummy)

  def initialize( name, species, tummy = [] )
    @name = name
    @species = species
    @tummy = tummy
  end

  def roar()
    return "Roar!"
  end

  def total_fish_eaten
    if @tummy.length > 0
      return @tummy.length
    else
      return
    end
  end

  def eat_fish_from(river)
    if river.fishes.length > 0
      @tummy << river.fishes[0]
      river.fish_eaten()
    else
      return
    end
  end

end