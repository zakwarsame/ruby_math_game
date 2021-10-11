
module Question
    puts "here is a question"
end

class Game
    include Question
end

mygame = Game.new