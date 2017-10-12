class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    @map << [key,value]
  end

  def lookup(key)
    @map.each do |pairs|
      return pairs[1] if pairs[0] == key
    end
    nil
  end

  def remove(key)
    @map.each_with_index do |pairs,idx|
      return @map[0...idx] + @map[idx + 1..-1]
      if pairs[0] == key
    end
    nil
  end

  def show
    p @map
  end
end
