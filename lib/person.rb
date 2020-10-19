# # your code goes here

# class Person
 
#     attr_reader :name
#     attr_accessor :bank_account

#     def initialize(name, bank_account=25, happiness=8)
#         @name = name
#         @bank_account = bank_account 
#         @happiness = happiness
#         @hygiene = 8
       

#     end

#     def happiness=(happiness)
#         if happiness > 10
#            @happiness = 10
#         elsif happiness < 0
#             @happiness = 0
#         else 
#             @happiness = happiness
#         end

#     end

#     def happiness
#         @happiness
#     end


#     def hygiene=(hygiene)
#         if hygiene > 10
#            @hygiene = 10
#         elsif hygiene < 0
#             @hygiene = 0
#         else 
#             @hygiene = hygiene
#         end

#     end

#     def hygiene
#         @hygiene
#     end

# def happy?
#     if @happiness > 7
#         true
#     else
#         false
#     end
# end

# def clean?
#     if @hygiene > 7
#         true
#     else
#         false
#     end
# end

# def get_paid(salary)
# @bank_account = @bank_account += salary
# return "all about the benjamins"
# end


# def take_bath
# @hygiene += 4
# return "♪ Rub-a-dub just relaxing in the tub ♫"
# end

# end

class Person
    attr_reader :name 
    attr_writer :happiness, :hygiene
    attr_accessor :bank_account
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness
      @happiness < 0 ? @happiness = 0 : @happiness
      @happiness > 10 ? @happiness = 10 : @happiness
    end
  
    def hygiene
      @hygiene < 0 ? @hygiene = 0 : @hygiene
      @hygiene > 10 ? @hygiene = 10 : @hygiene
    end
  
    def clean? 
      @hygiene > 7 ? true : false
    end
  
    def happy?
      @happiness > 7 ? true : false
    end
  
    def get_paid(amount)
      @bank_account += amount
      return "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      return "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      @friend = Person.new(friend)
  
      self.happiness += 3
      friend.happiness += 3
  
      return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(person, topic)
      @person = Person.new(person)
  
      if topic == "politics"
        person.happiness -= 2
        self.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        return "blah blah sun blah rain"
      else 
        return "blah blah blah blah blah"
      end
    end
  
  end 