class Player

    def initialize(name)
        @name = name
        @lives = 3
    end


end

class Game

    include Question

    


end

module Question
    
end

# when creating an instance, a player gets a name, a default 3 lives, a dead method, 

# a game takes in 2 players, will include a question, method to check if they answered correctly or not, method that will switch turns between players, 

# question generates a random question each time it's called