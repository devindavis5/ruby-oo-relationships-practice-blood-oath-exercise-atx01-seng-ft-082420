require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Cult.new('Hogwarts', 'Paris', 1942, 'Expelliarmus!')
c2 = Cult.new('Igloo Carving', 'Antarctica', 1885, 'Bundle Up!')
c3 = Cult.new('Xtreme Cult', 'Amsterdam', 1719, 'Something Sinister')
c4 = Cult.new('Hogsmeade', 'Paris', 1719, 'Honedukes, Please!')

f1 = Follower.new('Devin', 24, 'Tie your shoes.')
f2 = Follower.new('Brendan', 33, 'No capes!!')
f3 = Follower.new('Chris', 19, 'Never wake a sleeping dragon.')
f4 = Follower.new('Karley', 27, 'What am I supposed to write here?')

b1 = BloodOath.new(c1, f4, '2020-01-02')
b2 = BloodOath.new(c3, f4, '1999-10-01')
b3 = BloodOath.new(c2, f3, '2010-11-13')
b4 = BloodOath.new(c2, f4, '1994-09-24')
b5 = BloodOath.new(c3, f3, '2012-09-23')
b6 = BloodOath.new(c1, f3, '2018-03-08')
b7 = BloodOath.new(c1, f2, '2019-03-30')
b8 = BloodOath.new(c3, f2, '2014-06-28')
b9 = BloodOath.new(c3, f1, '2014-02-03')


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits