#! /usr/env/bin ruby

matrix = []
parsed = []
length = 0

file = File.open("pe18.txt", "r")
while line = file.gets
  matrix << line.split(' ')
end
file.close

matrix.each do |row|
  value = []
  row.each do |number|
    value << number.to_i
  end
  parsed << value
end

length = parsed.length - 1
i = length

while i > 0
  for j in 0..i-1
    parsed[i-1][j] += parsed[i][j] > parsed[i][j+1] ? parsed[i][j] : parsed[i][j+1]
  end
  i -= 1
end

puts parsed[0][0]
