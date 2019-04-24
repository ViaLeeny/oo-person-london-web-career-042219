#Create a Person class

class Person 

#Make it so name cannot be changed
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

#initialize the attributes we MUST define
  def initialize(name)
    @name = name 
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(amount)
    if amount > 10 
      amount = 10 
    elsif amount< 0
      amount = 0 
    end
    @happiness = amount
  end
  
  
 def hygiene=(amount)
    if amount > 10 
      amount = 10 
    elsif amount< 0
      amount = 0 
    end
    @hygiene = amount
  end
  
  
  def happy?
    @happiness > 7
  end 
  
  def clean?
    @hygiene > 7
  end 
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end 
    
  
  def take_bath(amount=4)
    self.hygiene+= (amount)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    
  end 
  
   def work_out(amount_1=3, amount_2=2)
    self.hygiene -= (amount_1)
    self.happiness += (amount_2)
  
    return "♪ another one bites the dust ♫"
    @hygiene = amount
  end 
  
  def call_friend (friend, amount=3 )
      caller = self.name
      self.happiness += (amount)
      friend.happiness += (amount)
    if caller = self.name
      puts "Hi #{friend}! It's Stella. How are you?"
    else 
      puts "Hi #{caller}! It's Felix. How are you?"
    end
  end 
  
  def start_conversation (person, topic)
    
    if topic = "politics"
      puts "blah blah partisan blah lobbyist"
       self.happiness += -2
       person.happiness += -2
    elsif topic = "weather"
      self.happiness += 1
      person.happiness += 1
      puts "blah blah sun blah rain"
    else
      puts "blah blah blah blah blah"
    end 
    
  end 
    
  
end 