class Person
  
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness 
    @happiness < 0 ? @happiness = 0 : @happiness = @happiness
    @happiness > 10 ? @happiness = 10 : @happiness = @happiness
  end

  def hygiene
    @hygiene < 0 ? @hygiene = 0 : @hygiene = @hygiene
    @hygiene > 10 ? @hygiene = 10 : @hygiene = @hygiene 
  end

  def happy?
    @happiness > 7 ? true : false 
  end

  def clean?
    @hygiene > 7 ? true : false 
  end

  def get_paid(pay)
    @bank_account += pay
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return  "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @friend = Person.new(friend)

    self.happiness += 3
    friend.happiness += 3

    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
   if topic == "politics"
    person.happiness -= 2
    self.happiness -= 2
    "blah blah partisan blah lobbyist"
   elsif topic == "weather"
    person.happiness += 1
    self.happiness += 1
    "blah blah sun blah rain"
   else topic == "programming"
    "blah blah blah blah blah"
   end

  end


end