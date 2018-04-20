# Exercise 1
class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end

# Exercise 2
class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end


# Exercise 3
class Map
  def initialize
    @map = []
  end

#looked at solution for assign (could not figure out how to reassign values
#to pre-existing keys...)
  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    end

    nil
  end

  def remove(key)
    @map.reject! { |pair| pair[0] == key }
  end

  def show
    @map
  end
end
