require 'string_calculator'

describe StringCalculator do
    describe '.add' do
        context 'given an empty string' do
            it 'returns zero' do
                expect(StringCalculator.add('')).to eql(0)
            end
        end

        context 'given 10 and 15' do
            it 'returns 25' do 
                expect(StringCalculator.add(10, 15)).to eq(25)
            end
        end

    end





end