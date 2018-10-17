require 'date'

class Ledger

    attr_accessor :funds, :account_type, :amount

    def initialize
        @funds = gets.chomp
        @account_type = gets.chomp
        @amount = gets.chomp
        @account_name = gets.chomp
    end

    def account_name
        account_name = gets.chomp
    end 
end