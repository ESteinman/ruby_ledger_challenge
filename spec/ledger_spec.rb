require './lib/ledger'
require './lib/accounts'

describe Ledger do

    it 'User can choose funds on initialize' do
        expect(subject.funds).to eq gets.chomp
    end

    it 'Expect to have a :account attribute' do
        expect(subject.account).to be nil
    end

    it 'is expected to have a :balance attribute with the value of 0 on initialize' do
        expect(subject.balance).to eq 0
    end

    describe 'Check account' do
        it 'is expected to get named' do
            expect(subject.check_account_name).to eq gets.chomp
        end
    end


end