#!/usr/env/bin ruby


#f = File.new("names.txt", "r")
a = IO.readlines("names.txt")
names = a[0].split(',')
names.sort!

sum = 0
i = 1
names.each do |name|
  values = 0
  name[1..-2].each_byte do |char|
    values += char - 64
  end
  sum += (i)*values
  i += 1
end
puts sum


#names.each do |name|
#  puts name
#  puts name[1..-2]
#end
