VALID_CHOICES = %w(r p sc l sp)

$player_score = 0
$computer_score = 0

def win?(first, second)
  (first == 'r' && second == 'sc') ||
    (first == 'p' && second == 'r') ||
    (first == 'sc' && second == 'p') ||
    (first == 'l' && second == 'sp') ||
    (first == 'l' && second == 'p') ||
    (first == 'sp' && second == 'sc') ||
    (first == 'sp' && second == 'r') ||
    (first == 'sc' && second == 'l') ||
    (first == 'p' && second == 'sp') ||
    (first == 'r' && second == 'l')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
    calc_results1
  elsif win?(computer, player)
    prompt("Computer won!")
    calc_results2
  else
    prompt("It's a tie!")
  end
end

def calc_results1
  $player_score += 1
end

def calc_results2
  $computer_score += 1
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''

  loop do
    prompt("Rock Paper Scissors Lizard Spock!")
    prompt("r for rock, p for paper, sc for scissors, l for lizard, sp for spock")
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Player score is #{$player_score}")
  prompt("Computer score is #{$computer_score}")

  if $player_score >= 5 || $computer_score >= 5
    break
  end

  prompt("Do you want to play again?")

  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.  Goodbye!")
