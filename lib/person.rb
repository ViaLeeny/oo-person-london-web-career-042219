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
    @hygiene += amount
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    @hygiene = (amount)
  end 
  
   def workout (amount=3)
    @happiness += 2
    @hygiene -= amount
    return "♪ another one bites the dust ♫"
    @hygiene = amount
  end 
    
  
end 