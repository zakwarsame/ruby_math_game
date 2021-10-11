class Player

    def initialize(name)
        @name = name
        @lives = 3
    end

    def is_dead?
        lives == 0 ? true : false
    end

end