#! /user/env/bin ruby
require 'mathn'

for i in 3..600851475143
  puts i if (600851475143 % i == 0) and i.prime?
end
