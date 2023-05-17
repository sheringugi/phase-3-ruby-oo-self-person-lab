class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name= name
        @bank_account= 25
        @happiness= 8
        @hygiene= 8
    end

    def happiness=(value)
        @happiness= value.clamp(0,10)

    end

    def hygiene= (value)
        @hygiene=value.clamp(0,10)
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount)
        self.bank_account+= amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        self.hygiene = 10 if hygiene > 10
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
    
      def work_out
        self.hygiene -= 3
        self.hygiene = 0 if hygiene < 0
        self.happiness += 2
        self.happiness = 10 if happiness > 10
        "♪ another one bites the dust ♫"
      end

      def work_out
        self.hygiene -= 3
        self.hygiene = 0 if hygiene < 0
        self.happiness += 2
        self.happiness = 10 if happiness > 10
        "♪ another one bites the dust ♫"
      end
    
      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        self.happiness = 10 if happiness > 10
        friend.happiness = 10 if friend.happiness > 10
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

      def start_conversation(friend, topic)
        case topic
        when "politics"
          self.happiness -= 2
          friend.happiness -= 2
          self.happiness = 0 if happiness < 0
          friend.happiness = 0 if friend.happiness < 0
          "blah blah partisan blah lobbyist"
        when "weather"
          self.happiness += 1
          friend.happiness += 1
          self.happiness = 10 if happiness > 10
          friend.happiness = 10 if friend.happiness > 10
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
      end
    end
    




p1= Person.new("Jane")

# puts p1= Person.new("Jane")
# puts p1.bank_account("21")
