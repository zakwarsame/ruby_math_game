require './player'

class Game
   attr_accessor :player1, :player2, :current_player
   def initialize
    puts "Input player one name:"
    print '> '
    player_1  = gets.chomp
    puts "Input player two name:"
    print '> '
    player_2 = gets.chop
    @player1 = Player.new(player_1)
    @player2 = Player.new(player_2)
    @current_player = player1
   end

   def start
    self.current_player.start_question
    is_winner?
    switch_player
    start
   end
    

   def switch_player
    puts "------ NEW TURN -------"
    if @current_player == self.player1
        @current_player = self.player2
    else
        @current_player = self.player1
    end
   end

   def announce(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '--- GAME OVER ---'
    puts 'Good bye!'
    exit(0)
  end

   def is_winner?
    if @player1.is_dead?
        announce(player2)
    elseif @player2.is_dead?
        announce(player1)
    end
end   
end
