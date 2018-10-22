require 'date'
require './lib/accounts'

class Ledger

    attr_accessor :funds, :account, :balance, :check_account_name

    def initialize
        @funds = gets.chomp
        @account = nil
        @balance = 0
        @check_account_name
    end

    def check_account_name
        @check_account_name = "add check account".split("add check account").join
    end

    def add_check_account
        gets "add check account '#{check_account_name}'"
        subject.check_account.create
        if subject.check_account.persisted?
            puts "'#{check_account_name}':'#{balance}'"
        else
            puts "Your account could not be created"
        end
    end

    

    private
    
    def create_check_account
        puts "'#{check_account_name}':'#{balance}'"
    end

    def create_expense_account
        puts "'#{check_account_name}':'#{balance}'"
    end
end