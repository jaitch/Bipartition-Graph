
def possible_bipartition(dislikes)
  return true if dislikes.empty?
  graph_queue = []
  searched = []
  
  color_array = []
  dislikes.length.times do
    color_array << 0
  end
  
  dislikes.each_with_index { |enemies, dog|
    graph_queue << dog
  }
  
  while !graph_queue.empty?
    current = graph_queue.shift
    if !searched.include?(current)
      color_array[current] = 1
      searched << current
      
      dislikes[current].each do |enemy|
        if color_array[enemy] == color_array[current]
          return false
        elsif color_array[enemy] == 0
          color_array[enemy] = -(color_array[current])
          searched << enemy
          graph_queue << enemy
        end
      end
      
    elsif searched.include?(current)
      dislikes[current].each do |enemy|
        if color_array[enemy] == color_array[current]
          return false
        elsif color_array[enemy] == 0
          color_array[enemy] = -(color_array[current])
          searched << enemy
          graph_queue << enemy
        end
      end
    end
  end
  return true
end
