require './lib/ledger'
require './lib/accounts'

describe Ledger do
let(:check_account) { instance_double('Check Account') }

    it 'User can choose funds on initialize' do
        expect(subject.funds).to eq gets.chomp
    end

    it 'User can name account on initialize' do
        expect(subject.account_name).to eq gets.chomp
    end

    it 'Expect to have a :account attribute' do
        expect(subject.account).to be nil
    end
end