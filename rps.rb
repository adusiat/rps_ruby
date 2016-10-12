# Rock, Paper, Scissors
human_move = " "
human_wins = 0
computer_wins = 0
ties = 0
computer_options = ["rock", "paper", "scissors"]

def normalize_move(move_input)
  case move_input.downcase
  when "rock", "r", "1"
    move = "rock"
  when "paper", "p", "2"
    move = "paper"
  when "scissors", "s", "3"
    move = "scissors"
  when "quit", "q", "exit", "stop", "done"
    move = "quit"
  else
    move = "invalid"
  end

  return move
end

def outcome(human, computer)
  if human == computer
    result = "tie"
  elsif (human == "rock" && computer == "scissors") ||
        (human == "paper" && computer == "rock") ||
        (human == "scissors" && computer == "paper")
    result = "win"
  else
    result = "lose"
  end

  return result
end

puts "Welcome to Rock, Paper, Scissors!"

while human_move != "quit"
  puts
  puts "Your move: rock, paper, or scissors?"

  input_from_user = gets.chomp
  human_move = normalize_move(input_from_user)

  case human_move
  when "invalid"
    puts "That doesn't appear to be a valid move..."
  when "quit"
    puts "Okay, thanks for playing!"
  else
    puts "You played #{human_move}."

    computer_move = computer_options.sample
    puts "The computer played #{computer_move}."

    case outcome(human_move, computer_move)
    when "win"
      puts "You Win!"
      human_wins = human_wins + 1
    when "tie"
      puts "It's a tie!"
      ties = ties + 1
    when "lose"
      puts "You Lose!"
      computer_wins = computer_wins + 1
    end

    puts "Human - #{human_wins}; Computer - #{computer_wins}; Ties - #{ties}"
  end
end
