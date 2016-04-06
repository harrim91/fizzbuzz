require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when passed a multiple of 3' do
    (1..100).each do |n|
      expect(fizzbuzz(n*3)).to eq 'fizz' if n*3 % 5 != 0
    end
  end

  it 'returns "buzz" when passed a multiple of 5' do
    (1..100).each do |n|
      expect(fizzbuzz(n*5)).to eq 'buzz' if n*5 % 3 != 0
    end
  end

  it 'returns "fizzbuzz" when passed a multiple of 3 and 5' do
    (1..100).each do |n|
      expect(fizzbuzz(n*15)).to eq 'fizzbuzz'
    end
  end

  it 'returns the number when not divisible by 3 or 5' do
    (1..100).each do |n|
      expect(fizzbuzz(n)).to eq n if n % 3 != 0 && n % 5 != 0
    end
  end
end