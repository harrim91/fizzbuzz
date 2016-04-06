require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed a multiple of 3' do
    expect(fizzbuzz(3)).to eq 'fizz'
    expect(fizzbuzz(9)).to eq 'fizz'
  end

  it 'returns "buzz" when passed a multiple of 5' do
    (1..100).each do |n|
      expect(fizzbuzz(n*5)).to eq 'buzz' if (n*5) % 3 != 0
    end
  end

  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end

  it 'returns the number when not divisible by 3 or 5' do
    expect(fizzbuzz(2)).to eq 2
  end
end