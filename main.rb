require './turn'
require './lives'

def start
  player = 1
  turn = Turn.new
  lives = Life.new

  while lives.score1 != 0 && lives.score2 != 0
    puts "Player #{player}: What does #{turn.num1} plus #{turn.num2} equal?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.to_i == (turn.num1 + turn.num2)
      puts "Player #{player}: YES! You are correct."
      puts "P1: #{lives.score1}/3 vs P2 #{lives.score2}/3"
    else
      puts "Player #{player}: Seriously? No!"
      if player == 1
        lives.score1 -= 1
      else
        lives.score2 -= 1
      end
      puts "P1: #{lives.score1}/3 vs P2: #{lives.score2}/3"
    end

    player == 1 ? player = 2 : player = 1

    lives.score1 != 0 && lives.score2 != 0 ? (puts "----- NEW TURN -----") : ""

    turn = Turn.new
  
  end 

  
  if lives.score1 == 0
    puts "Player 2 wins with a score of #{lives.score2}/3"
  else
    puts "Player 1 wins with a score of #{lives.score1}/3"
  end

  puts "----- GAME OVER -----"
  
end

start