#!/usr/bin/ruby


def find_largest_number
  largest_number = 0
  array = [1,4,7,12,33,77,1,4,5,56,0,8,7,5,44]
  array.each do |number|
    largest_number = number if number > largest_number
  end
  return largest_number
end

p find_largest_number
