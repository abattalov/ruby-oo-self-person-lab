class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {|o| o.happiness += 3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person,topic)
        objects = [self, person]
        if topic == "politics"
            objects.each {|o| o.happiness -= 2}
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            objects.each {|o| o.happiness += 1}
            return "blah blah sun blah rain"
        elsif topic != "politics" || topic != "weather"
            return "blah blah blah blah blah"
        end
        
    end

end
