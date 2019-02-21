require 'test'

describe 'say_hello' do
  context 'given an empty name' do
    it "returns: 'Hello there!" do
      expect(say_hello('')).to eql('Hello there!')
    end
  end

  context 'given Joseph' do
    it  'returns: Hello, Joseph!' do
      expect(say_hello('Joseph')).to eql('Hello, Joseph!')
    end
  end

end