require './lib/person.rb'
require './lib/atm'

describe Person do
    subject { described_class.new(name: 'Thomas') }

    it 'is expected to have a :name on initilize' do
        expect(subject.name).not_to be nil
    end
end