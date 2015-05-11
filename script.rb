#!/usr/bin/env ruby

first = File.readlines('first.txt').map(&:chomp).each{|word| word[0] = word[0].upcase}
middle = File.readlines('middle.txt').map(&:chomp).each{|word| word[0] = word[0].upcase}
last = File.readlines('last.txt').map(&:chomp).each{|word| word[0] = word[0].upcase}

puts 20.times.map{ 
  [
    first[rand(first.size)],
    rand(4) != 0 ? middle[rand(middle.size)] : nil,
    last[rand(last.size)]
  ].compact.join(" ")
}

