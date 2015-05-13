require 'sinatra/base'

class Lovehandler < Sinatra::Base
  dir = File.dirname(File.expand_path(__FILE__))
  FIRST = File.readlines(dir + '/first.txt').map(&:chomp).each{|word| word[0] = word[0].upcase}
  MIDDLE = File.readlines(dir + '/middle.txt').map(&:chomp).each{|word| word[0] = word[0].upcase}
  LAST = File.readlines(dir + '/last.txt').map(&:chomp).each{|word| word[0] = word[0].upcase}

  get '/' do
    @name = [
      FIRST[rand(FIRST.size)],
      rand(4) != 0 ? MIDDLE[rand(MIDDLE.size)] : nil,
      LAST[rand(LAST.size)]
    ].compact.join(" ")

    haml :index
  end
end
