
module Question

    attr_accessor :first, :second

    def initialize
        @first, @second =  2.times.map { rand(20) }
        @sum = @first + @second
    end
    
    def generate_question(name)
        puts "#{name} What is #{self.first} + #{self.second}?"
    end
end

class Game
    
    def initialize(p1, p2)
        @p1 = p1
        @p2 = p2
    end

    include Question


end

mygame = Game.new
mygame.generate_question
p mygame.sum