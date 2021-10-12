module Question
    def generate_question(player)
        puts "#{player}: What is #{self.first_digit} + #{self.second_digit}?"
    end
    def correct?(input)
        input == self.sum 
    end
end


class Player
    # include question module
    include Question
    attr_accessor :name, :first_digit, :second_digit, :sum, :lives
    def initialize(name)
        @first_digit, @second_digit =  2.times.map { rand(20) }
        @sum = first_digit + second_digit
        @name = name
        @lives = 3
    end

    def subtract_life
        self.lives-=1
    end

    def is_dead?
        self.lives == 0 ? true : false
    end


    
    def start_question
        generate_question(self.name)
        print '> '
        @user_answer = gets.chomp
        puts @user_answer
        puts self.sum
        if correct?(@user_answer.to_i)
          puts "YES! You are correct"
        else
          puts 'Seriously? No!'
          subtract_life
        end
    end
end

# player1 = Player.new('player')

# player1.start_question
