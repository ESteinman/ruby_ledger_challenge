class CheckAccount
    
    attr_accessor :balance, :name
    
    def initialize
        @balance = 0
    end



    def transaction_out (amount, account)
        account.balance = account.balance - amount
    end

    def transaction_in (amount, account)
        account.balance = account.balance + amount
    end
end