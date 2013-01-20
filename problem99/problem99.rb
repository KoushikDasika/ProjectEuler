#!/usr/env/bin ruby

## This problem uses the fact that
#  log(a^x) = x * log(a)
#  This is a much easier way to compare the terms
#  than calculating them outright
file = File.open("base_exp.txt", "r")
pairs = Hash.new
line_number = 0

while line = file.gets
  nums = line.split(',')
  line_number += 1
  pairs[line_number] = nums[1].to_i * Math.log(nums[0].to_i)
end

answer = pairs.sort_by { |lines, num| num}

answer.each do |lines, number|
  puts "line is #{lines} : number is #{number}"
end
file.close
