#! /usr/env/bin ruby

@matrix = []

file = File.open("matrix.txt", "r")
while line = file.gets
  @matrix << line.split(',').map(&:to_i)
end
file.close

#puts @matrix.map { |x| x.inspect }.join(" ")
length = @matrix.length

@greedy = Array.new(length) { Array.new(length) { 0 } }

def solving_magic(i, j)
  @greedy[i][j] = @matrix[i][j]
  (0...@matrix.size).each {|i|
    (0...@matrix.size).each {|j|
      next if i == 0 && j == 0
      if i == 0
        @greedy[i][j] = @greedy[i][j-1] + @matrix[i][j]
      elsif j == 0
        @greedy[i][j] = @greedy[i-1][j] + @matrix[i][j]
      else
        from_up   = @greedy[i-1][j] + @matrix[i][j]
        from_left = @greedy[i][j-1] + @matrix[i][j]
        @greedy[i][j] = from_left < from_up ? from_left : from_up
      end
    }
  }
end

solving_magic(0, 0)
puts @greedy[length - 1][length - 1]
