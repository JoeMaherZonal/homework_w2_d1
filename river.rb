class River
  attr_accessor(:fishes)

  def initialize(fishes)
    @fishes = fishes
  end

  def total_fish()
    count = 0
    for fish in @fishes
      count += 1
    end
    return count
  end

  def fish_eaten()
    if fishes.length > 0
      @fishes.delete_at(0)
    else
      return
    end
  end

end