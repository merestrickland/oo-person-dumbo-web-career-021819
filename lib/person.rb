require "pry"
class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8 #can't be more than 10
    @hygiene = 8 #can't be more than 10
  end

  def clean?
    if @hygiene > 7
      true
    else false
    end
  end

 def happiness=(happiness)
   if happiness >= 10
     happiness = 10
  end

  if happiness <= 0
    happiness = 0
  end
  @happiness=happiness
end

def hygiene=(hygiene)
  if hygiene >= 10
    hygiene = 10
 end

 if hygiene <= 0
   hygiene = 0
 end
 @hygiene=hygiene
end


  def happy?
    if @happiness > 7
      true
    else false
    end
  end

  # def increment_happy_hygiene(happyorhygiene,number)
  #   happyorhygiene += number
  #   if happyorhygiene >= 10
  #     happyorhygiene = 10
  # elsif
  #     happyorhygiene <= 0
  #     happyorhygiene = 0
  # end
  # happyorhygiene
  # end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
  self.hygiene +=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end



  def work_out

self.happiness += 2
self.hygiene += -3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    #  binding.pry
  friend.happiness += 3
    #  binding.pry
  self.happiness += 3
    #  binding.pry
  "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(person, topic)

    if topic == "politics"
      person.happiness += -2
      self.happiness += -2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
