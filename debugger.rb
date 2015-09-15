# using a debugger
require 'pry'
(1..5).each do |number|
  binding.pry
  puts "Number: #{number}"
end
for i in 0..5
  require 'pry' ; binding.pry
   puts "Value of local variable is #{i}"
end
x = 0
while x < 4
  require 'pry' ; binding.pry
  puts "The value of that x is #{x}"
end