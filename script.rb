#!/usr/bin/env ruby

first = File.readlines('first').map(&:chomp).each{|word| word[0] = word[0].upcase}
middle = File.readlines('middle').map(&:chomp).each{|word| word[0] = word[0].upcase}
last = File.readlines('last').map(&:chomp).each{|word| word[0] = word[0].upcase}

puts 20.times.map{ 
  [
    first[rand(first.size)],
    rand(2) == 1 ? middle[rand(middle.size)] : nil,
    last[rand(last.size)]
  ].compact.join(" ")
}

