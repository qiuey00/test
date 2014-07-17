#!/usr/bin/env ruby

def sum_of_squares(n)
  if n > 1
    n*n + sum_of_squares(n-1)
  else
    1
  end
end

def square_of_sums(n)
  sum(n)*sum(n)
end

def sum(n)
  ((n+1)*n/2).to_i
end

(100..100).each do |n|
  a = square_of_sums(n)
  b = sum_of_squares(n)
  puts "#{n}: #{a} - #{b} = #{a-b}"
end
