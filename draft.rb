class Player

    def initialize(name)
        @name = name
        @lives = 3
    end

    def is_dead?
        lives > 0 ? true : false
    end

end

class Game

    include Question

    def initialize(p1, p2)
        @p1 = p1
        @p2 = p2
    end

end

module Question
    random_number = rand(0...20)
    "What does ${}"
end

# when creating an instance, a player gets a name, a default 3 lives, a dead method, a losing life method

# a game takes in 2 players, will include a question, method to check if they answered correctly or not, method that will switch turns between players, 

# question generates a random question each time it's called, has a method 