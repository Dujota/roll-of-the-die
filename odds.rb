# Copy your last program to odds.rb.
# Figure out the odds of each total coming up.
# Your output should look like so:
#
# $ ruby  odds.rb
# The odds of 2 coming up are 3%
# The odds of 3 coming up are 6%
# The odds of 4 coming up are 8%
# The odds of 5 coming up are 11%
# The odds of 6 coming up are 14%
# The odds of 7 coming up are 17%
# The odds of 8 coming up are 14%
# The odds of 9 coming up are 11%
# The odds of 10 coming up are 8%
# The odds of 11 coming up are 6%
# The odds of 12 coming up are 3%


total_times = {}
count = 0 # had to re-use the counter from the how many exercise in order to complete the odds calculation
(2..12).each { |roll_sum|  total_times[roll_sum] = nil.to_i }


(1..6).each { |roll1|
  (1..6).each { |roll2|
    total_times[roll1 + roll2] += 1
    count +=1
  }
}

#need to change the value for the roll_sum key that we entered in the previous examples to reflect a percentage
# googled  ou mean like this percentage = a/b*100? >>> https://stackoverflow.com/questions/3668345/calculate-percentage-in-ruby
#if the first output is (The odds of 2 coming up are 3%) = (1/36 * 100) >>>> a = # of times it shows up

total_times.each { |dice_sum, instances|
  odds = (instances.to_f / count) * 100 #used formula above where i need to bring in total # of occurances and devide the instances by that total, will round off to two decimal points to make it more accurate
  puts "\n The odds of rolling #{dice_sum} is #{odds.round(2)}% \n House always win!!! Good Luck! \n"
}
  #googled how to round to 2 decimal points https://stackoverflow.com/questions/10459901/how-do-you-round-a-float-to-two-decimal-places-in-jruby




# puts "There are #{count} possibilities"
