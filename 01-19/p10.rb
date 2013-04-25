require 'mathn'
sum = 0
Integer.each_prime(2_000_000) {|i| sum += i}
puts sum
