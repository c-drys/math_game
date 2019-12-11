class Game
  attr_accessor :current_player, :winner
  @@number_of_questions = 0

  def initialise 
    @player_01 = Player.new("Player 1")
    @player_02 = Palyer.new("Player 2")
    @current_player = @player_01
    @winner = nil
  end

  def player_change
    if current_player == player_01
      @current_player = player_02
    elsif @current_player == player_02
      @current_player = player_01
    end
  end

  def new_turn
    while @player_01.score > 0 && player_02.score > 0 do
      puts " ---NEW TURN--- "
      self.player_change
      self.new_round

# questions & scoring
  def new_round
    q = Question.new
    @@number_of_questions += 1
    puts "@current_player.get_question"
    player_answer = gets.chomp.to_i

  def correct
    if player_answer == q.correct_answer
    puts "Correct! Good Job!"
    self.score
  end 

  def incorrect
    if player_answer != q.correct_answer
    puts "Really?! Sorry incorrect"
    player[index].lose_life()
    self.score
  end 

  def score
    puts "P1: #{@player_01.score} vs P2: #{@player_02.score}"
  end 

  def winner
    if player_01.score > player_02.score
      @winner == @player_01

    elseif player_02.score > player_01.score
      @winner == @player_02
    end
  end

  self.winner
  puts "#{@winner.name} is the winner with #{winner.score} lives"
  puts " ---GAME OVER---" 
  end

end