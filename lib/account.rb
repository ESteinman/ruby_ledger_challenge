require 'date'
class Account
    STANDARD_VALIDITY_YRS = 5
    attr_accessor :pin, :balance, :exp_date, :condition, :owner
  
    def initialize(attrs = {})
     @exp_date = set_expire_date
     @pin = generate_pin
     @balance = 0
      set_owner(attrs[:owner])
    end