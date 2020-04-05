
def possible_bipartition(dislikes)
  graph_queue = []
  dislikes.each do |dog|
    (graph_queue << dog).flatten!
  end
  searched = []
  while !graph_queue.empty?

  print graph_queue
end

def conflicting?()
end

#   first_group = []
#   second_group = []

#   dislikes.each_with_index {|enemies, dog|
#     if !first_group.include?(dog) && !second_group.include?(enemies)
#       first_group << dog
#       (second_group << enemies).flatten!
#     elsif !first_group.include?(enemies) && !second_group.include?(dog)
#       first_group << enemies
#       (second_group << dog).flatten!
#     else
#       return false
#     end
#     puts "group1: #{first_group}; group2: #{second_group}"
#   }
#   return true
# end

possible_bipartition(dislikes = [ [3, 6],
  [2, 5],
  [1, 3],
  [0, 2],
  [5],
  [1, 4],
  [0]
  ])