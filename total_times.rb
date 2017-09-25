# Copy your last program to total_times.rb.
#
# Notice that the totals above range from 2 to 12.
#
# Figure out how many times each total will come up if each possible permutation is rolled once.
#
# Use a Hash with keys of 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 & 12 to keep track of how many times each total occurred.
#
# Your output should look like so:
#
# $ ruby total_times.rb
# 2 occurs 1 times
# 3 occurs 2 times
# 4 occurs 3 times
# 5 occurs 4 times
# 6 occurs 5 times
# 7 occurs 6 times
# 8 occurs 5 times
# 9 occurs 4 times
# 10 occurs 3 times
# 11 occurs 2 times
# 12 occurs 1 times


# count = 0

# https://stackoverflow.com/questions/7025531/ruby-rails-converting-a-range-into-a-hash
# found this guide to setup hash for the range porvided 2-12, will use  h[x] = nil instead as a place holder value
# h = {}
# (1..10).each {|x| h[x] = "£#{x}"}

total_times = {}

(2..12).each { |roll_sum|  total_times[roll_sum] = nil.to_i }
#got error: undefined method `+' for nil:NilClass (NoMethodError)
# ruby-docs - arithmatic operations not allowed on nil, need to turn into an integer
# https://stackoverflow.com/questions/37715446/undefined-method-for-nilnilclass-ruby
# https://ruby-doc.org/core-2.4.1/NilClass.html

(1..6).each { |roll1|
  (1..6).each { |roll2|
    #i need to record each instance of the sum into the hash, which uses the sum ecorded on the last exercise (Total: #{roll1 + roll2}") as the key in our new array created with range (2..12 )

    #issue how to record each instance and add it to the hash? bobby[:hair] = 'nonexistent' >>>> use this? to add
    #tried total_times[roll1 + roll2] = 'test'
    total_times[roll1 + roll2] += 1
    #got error undefined method `+' for nil:NilClass (NoMethodError) when i started to add 1 to the value every time the
    #the key overwrote the same instance of itself. had to google it. solution above on line 34
  }
}

total_times.each { |roll_sum, times_count| puts "\n Just so you know: when rolling two dice, if the sum of the roll is #{roll_sum} \n Then it occurs #{times_count} times \n"}


# puts total_times >>>> was using this to test the output of my has after i went through the roll sums
# test case of total_times[roll1 + roll2] = 'test'
# {2=>"test", 3=>"test", 4=>"test", 5=>"test", 6=>"test", 7=>"test", 8=>"test", 9=>"test", 10=>"test", 11=>"test", 12=>"test"}






# puts "There are #{count} possibilities"
