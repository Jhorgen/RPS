require('pry')

class ShivKatanaCrowbar
  def initialize()
    @humanScore = 0
    @pcScore = 0
  end
  def game(player1)
    # until is telliog ruby to continue prompting user and computer until a score of 5 is reached
    until @humanScore == 5 || @pcScore == 5 || @humanScore == 5 && @pcScore == 5

      puts "Select your weapon: shiv, katana or crowbar?"
      sleep (4)

    # .chomp removes unwated lines in output. downcase changes any text upper or lower to lower case
    # .sample is telling the computer to randomly choose in the array
    human = gets.chomp.downcase
    pc = ["shiv", "katana", "crowbar"].sample

    @player_hand = player1

    if (human == "shiv" && pc == "crowbar") || (human == "crowbar" && pc == "katana") || (human == "katana" && pc == "shiv")
      puts "You lived."
      @humanScore += 1
      elsif (human == "shiv" && pc == "shiv") || (human == "katana" && pc == "katana") || (human == "crowbar" && pc == "crowbar")
        puts ""
      else @pcScore += 1
        puts "You lost a " + ["leg.", "arm", "finger", "toe", "glasses"].sample
      end
      puts pc
      puts  player1
    end
    if @humanScore == 5
      puts "You won this round"
    else @pcScore == 5
      puts "You lost"
    end
  end
end
