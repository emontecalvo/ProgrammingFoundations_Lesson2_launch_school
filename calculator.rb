# Walk-through: Calculator

# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, 
# multiple or divide
# displays the result
# Use the Kernel.gets() method to retrieve user input,
#  and use Kernel.puts() method to display output. 
#  Remember that Kernel.gets() includes the newline,
#  so you have to call chomp() to remove it: Kernel.gets().chomp().


Kernel.puts "Hello! Please enter in a number."
first = Kernel.gets.chomp.to_f
sleep 1
Kernel.puts " "
Kernel.puts "Please enter in a second number."
second = Kernel.gets.chomp.to_f
sleep 1
Kernel.puts " "
Kernel.puts "Would you like to add, subtract, multiply or divide?"
Kernel.puts "Press 1 for add, 2 for subtract, 3 for multiply, 4 for divide, and any other key to quit."
action = Kernel.gets.chomp.to_f

if action == 1
  Kernel.puts "#{first} plus #{second} equals:"
  Kernel.puts first + second
elsif action == 2
  Kernel.puts "#{first} minus #{second} equals:"
  Kernel.puts first - second
elsif action == 3
  Kernel.puts "#{first} times #{second} equals:"
  Kernel.puts first * second
elsif action == 4
  Kernel.puts "#{first} divided by #{second} equals:"
  Kernel.puts first / second
else
  Kernel.puts "Goodbye!"
end



