require 'fizzbuzz'

describe 'fizzbuzz' do

  # it 'returns "fizz" when passed a multiple of 3' do
  #   (1..100).each do |n|
  #     expect(fizzbuzz(n*3)).to eq 'fizz' if n*3 % 5 != 0
  #   end
  # end

  it 'returns "fizz" when called on a multiple of 3' do
    (1..100).each do |n|
      expect((n*3).fizzbuzz).to eq 'fizz' if n*3 % 5 != 0
    end
  end

  it 'works for bignums' do
    expect(4611686018427387904.fizzbuzz).to eq 4611686018427387904
  end

  it 'returns "buzz" when passed a multiple of 5' do
    (1..100).each do |n|
      expect((n*5).fizzbuzz).to eq 'buzz' if n*5 % 3 != 0
    end
  end

  it 'returns "fizzbuzz" when passed a multiple of 3 and 5' do
    (1..100).each do |n|
      expect((n*15).fizzbuzz).to eq 'fizzbuzz'
    end
  end

  it 'returns the number when not divisible by 3 or 5' do
    (1..100).each do |n|
      expect(n.fizzbuzz).to eq n if n % 3 != 0 && n % 5 != 0
    end
  end
end