
sorted_rolls = []

10.times do
  dice = Random.rand(1..6)
  sorted_rolls << "The result of your roll is #{dice}"
end

puts sorted_rolls.sort
