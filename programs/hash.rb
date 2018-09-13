#!/usr/bin/env ruby


hash = {"one" => 1,"two" => 2, "three" => 3}

p hash

hash.each do |k,v|
  if v%2 == 0
    puts k
  end
end
