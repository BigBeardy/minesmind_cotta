# x gets.chomp
  
def coin_changers(cents)
coin_value = {quarter: 25, Dime: 10, nickel: 5, penny: 1}
your_cents = {quarter: 0 , Dime: 0, nickel: 0, penny: 0} 



coin_value.each do | coin, value|
      while
      	value <= cents
      	your_cents[coin] += 1
      	cents = cents - value
      end
    end
 your_cents
end        
