require './lib/ledger.rb'
describe Ledger do

    it 'User can choose funds on initialize' do
        expect(subject.funds).to eq gets.chomp
    end

    it 'User can name account on initialize' do
        expect(subject.account_name).to eq gets.chomp
    end
end