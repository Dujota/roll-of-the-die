die1 = Random.rand(1..6)
die2 = Random.rand(1..6)

puts "You rolled #{die1} and #{die2}"
if die1 == die2
  puts "Doubles!"
end

puts "The total of your roll is #{die1 + die2}"
