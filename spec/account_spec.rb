require './lib/account.rb'

describe Account do 
    let(:account) { instance_double('Account',pin_code: '1234', exp_date: '04/19',account_status: :disabled)}
    let(:account_good) { instance_double('Account',pin_code: '1234', exp_date: '04/19',account_status: :active)}

    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
        allow(account_good).to receive(:balance).and_return(100)
        allow(account_good).to receive(:balance=)
    end
    it 'check length of a number' do
        number = 1234
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

end