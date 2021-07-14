# input
#   - array of arrays of integers representing a maze
#   - array of strings representing directions
#
# output
#   - string
#     - 'Finish' if the endpoint (3) is reached
#     - 'Dead' if wall (1) is hit or outside border
#     - 'Lost' if at end still in maze
#
# algorithm
#   - initialize location variable
#   - find initial location of maze
#     - iterate through maze
#       - check if 2 in array
#         - update location if it is
#   - iterate through directions array
#     - if 'N' increase location row by 1
#     - if 'S' decrease location row by 1
#     - if 'E' increase location column by 1
#     - if 'W' decrease location column by 1
#     - check value at location

def maze_runner(maze, directions)
  location = [0, 0]
  val = 0

  maze.each_with_index do |arr, i|
    column = arr.index(2)
    location = [i, column] if column
  end

  directions.each do |dir|
    case dir
    when 'N'  then location[0] -= 1
    when 'S'  then location[0] += 1
    when 'E'  then location[1] += 1
    when 'W'  then location[1] -= 1
    end
    return 'Dead' if location.any? { |n| n < 0 || n >= maze.size }
    val = maze[location[0]][location[1]]
    return 'Dead' if val == 1
    return 'Finish' if val == 3
  end
  'Lost'
end

maze = [[1,1,1,1,1,1,1],
        [1,0,0,0,0,0,3],
        [1,0,1,0,1,0,1],
        [0,0,1,0,0,0,1],
        [1,0,1,0,1,0,1],
        [1,0,0,0,0,0,1],
        [1,2,1,0,1,0,1]]
        
p maze_runner(maze, ["N", "N", "N", "N", "N", "E", "E", "S", "S", "S", "S", "S", "S"])
