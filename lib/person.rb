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

  #set a happiness limit
  def happiness=(amount)
    if amount > 10 
      amount = 10 
    elsif amount< 0
      amount = 0 
    end
    @happiness = amount
  end
  
  #set a hygeiene limit
 def hygiene=(amount)
    if amount > 10 
      amount = 10 
    elsif amount< 0
      amount = 0 
    end
    @hygiene = amount
  end
  
  #checks if person's happiness level is higher than 7
  def happy?
    @happiness > 7
  end 
  
  #checks if person's cleanliness level is higher than 7
  def clean?
    @hygiene > 7
  end 
  
  #inputs a salary into Person's bank account
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end 
    
  #increases Person's hygiene after taking a bath
  def take_bath(amount=4)
    self.hygiene+= (amount)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    
  end 
  
  #increases person's happiness and decreases hygiene after a workout 
   def work_out(amount_1=3, amount_2=2)
    self.hygiene -= (amount_1)
    self.happiness += (amount_2)
  
    return "♪ another one bites the dust ♫"
    @hygiene = amount
  end 
  
  #calls a beautifulllll friend
  def call_friend (friend, amount=3 )
      
      self.happiness += (amount)
      friend.happiness += (amount)

      puts "Hi #{friend}! It's Stella. How are you?"

      puts "Hi #{self.name}! It's Felix. How are you?"

  end 
  
  #starts a conversation with a person about a topic
  def start_conversation (person, topic)
    
    if topic == "politics"
       self.happiness += (-2)
       person.happiness += (-2)
       return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end 
  end
  
end 
