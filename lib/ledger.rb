require 'date'
require './lib/accounts'

class Ledger

    attr_accessor :funds, :account, :balance, :check_account_name

    def initialize
        @funds = gets.chomp
        @account = nil
        @balance = 0
    end

    def check_account_name
        @check_account_name = gets.chomp.split("add check account").join
    end

    def expense_account
        
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

    def create_expense_account
        puts "'#{check_account_name}':'#{balance}'"
    end
end