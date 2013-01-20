#!/usr/bin/env ruby

require 'date'

start = Date.new(1901, 1, 1)
last = Date.new(2000, 12, 31)

pointer = start
counter = 0

while pointer < last
  if pointer.wday == 0
    counter += 1
  end
  pointer = pointer.next_month
end

puts counter
