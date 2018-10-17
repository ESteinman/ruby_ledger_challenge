require 'date'

class Ledger

    attr_accessor :funds, :account, :amount

    def initialize
        @funds = gets.chomp
        @account = nil
        @amount = 0
        @account_name = gets.chomp
    end

    def account_name
        account_name = gets.chomp
    end 

    def create_check_account
        amount == nil
    end

    def create_accounts
        case
        when user.input == "add check account '#{account_name}'"
            subject.create_check_account
        when user.input == "add expense account '#{account_name}'"
            subject.create-expense_account
        else user.input == "add income account '#{account_name}"
            subject.create_income_account
        end
    end

    private
end

class CheckAccount

end