# Rock, Paper, Scissors
human_move = " "
human_wins = 0
computer_wins = 0

while human_move.downcase != "quit"

  computer_options =["rock","paper","scissors"]
  human_options = ["rock","paper","scissors","r","p","s","1","2","3"]

  puts "Welcome to Rock, Paper, Scissors!"

  puts "Your move: rock, paper, or scissors?"

  human_move = gets.chomp.downcase #downcasing input eliminates case sensitivity

  if human_options.include?(human_move) == false
    puts  "That doesn't appear to be a valid move..."
  else
    computer_move = computer_options.sample
    puts computer_move
    if ((human_move[0] == "r" or "1") and computer_move == "scissors")  or ((human_move[0] == "p" or "2") and computer_move == "rock") or ((human_move[0] == "s" or "3") and computer_move == "paper")
      puts "You Win!"
      human_wins = human_wins + 1
    else
      if human_move[0] == computer_move[0]
        puts "It's a tie!"
      else
        if human_options.include?(human_move)
          puts "You Lose!"
          computer_wins = computer_wins + 1
        else
        end
      end
    end
  end
end

puts "Human - " + human_wins.to_s + " Computer - " + computer_wins.to_s
