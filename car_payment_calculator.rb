puts "Please enter in your loan amount."
loan = gets.chomp.to_f
puts "Please enter in the interest rate as a basic percentage (5 for 5%, 7 for 7%, etc.)"
initial_int_rate = gets.chomp.to_f
int_rate = (initial_int_rate * 0.01) / 12
puts "Please enter in the number of months you will be making payments."
puts "Example, 1-year loan = 12 months, enter 12.  3-year loan = 36 months, enter 36."
number_of_payments = gets.chomp.to_f
puts "Your loan amount is #{loan}, your interest rate is #{initial_int_rate}%, and your loan repayment term is #{number_of_payments} months."
sleep 1

def calculate_loan_payments(loan, int_rate, number_of_payments)
  top_half = loan * (int_rate * (int_rate + 1)**number_of_payments)
  lower_half = (1 + int_rate)**number_of_payments - 1

  monthly_payment_full = top_half.to_f / lower_half.to_f
  monthly_payment = monthly_payment_full.round(2)

  puts "Your monthly payment would be $#{monthly_payment}."
end

calculate_loan_payments(loan, int_rate, number_of_payments)
