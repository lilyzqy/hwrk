fish_group = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
def sluggish_octopus(fishes)
  fishes.each_with_index do |i|
    longest  = true
    j = i + 1
    while j < fishes.length
      longest = false if fishes[i] < fishes[j]
      j += 1
    end
  end
end

class Array
  def merge_sort(&prc)
    mid = length / 2
    prc ||= Proc.new{|x,y| x <=> y}
    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)
    Array.merge(left,right,&prc)
  end

  private

  def self.merge(left,right,&prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first,right.first)
      when 1
        merged << right.shift
      when 0
        merged << left.shift
      when -1
        merged << right.shift
      end
    end
    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def dominant_octopus(fishes)
  prc = Proc.new{|x,y| x.length <=> y.length}
  fishes.merge_sort(&prc).last
end

def clever_octopus(fishes)
  longest = fishes.first
  fishes.each do |fish|
    longest = fish if fish.length > longest.length
  end
  longest
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def octopus_slow_dance(dir,tiles_arr)
  tiles_arr.each_index do |leg_number|
    return leg_number if dir == tiles_arr[leg_number]
  end
end

def octopus_fast_dance(dir,tiles_hash)
  tiles_hash[dir]
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}
