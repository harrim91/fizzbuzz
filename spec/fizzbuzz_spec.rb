require 'fizzbuzz'

describe 'fizzbuzz' do

  it 'returns "fizz" when called on a multiple of 3' do
    (1..100).each do |n|
      expect((n*3).fizzbuzz).to eq 'fizz' if n*3 % 5 != 0
    end
  end

  it 'returns "buzz" when called on a multiple of 5' do
    (1..100).each do |n|
      expect((n*5).fizzbuzz).to eq 'buzz' if n*5 % 3 != 0
    end
  end

  it 'returns "fizzbuzz" when called on a multiple of 15' do
    (1..100).each do |n|
      expect((n*15).fizzbuzz).to eq 'fizzbuzz'
    end
  end

  it 'returns self when not divisible by 3 or 5' do
    (1..100).each do |n|
      expect(n.fizzbuzz).to eq n if n % 3 != 0 && n % 5 != 0
    end
  end

  it 'works on bignums' do
    expect(4611686018427387904.fizzbuzz).to eq 4611686018427387904
    expect(4611686018427387905.fizzbuzz).to eq "buzz"
    expect(4611686018427387906.fizzbuzz).to eq "fizz"
    expect(4611686018427387915.fizzbuzz).to eq "fizzbuzz"
  end
end