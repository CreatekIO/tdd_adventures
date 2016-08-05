describe FizzBuzzer do

  describe '#get' do
    it 'should get Fizz if the number is a multiple of 3' do
      expect(FizzBuzzer.get(3)).to eq('Fizz')
      expect(FizzBuzzer.get(6)).to eq('Fizz')
      expect(FizzBuzzer.get(18)).to eq('Fizz')
    end

    it 'should get Buzz if the number is a multiple of 5' do
      expect(FizzBuzzer.get(5)).to eq('Buzz')
      expect(FizzBuzzer.get(10)).to eq('Buzz')
      expect(FizzBuzzer.get(25)).to eq('Buzz')
    end

    it 'should get Fizz Buzz if the number is a multiple of both 3 and 5' do
      expect(FizzBuzzer.get(15)).to eq('Fizz Buzz')
      expect(FizzBuzzer.get(30)).to eq('Fizz Buzz')
      expect(FizzBuzzer.get(45)).to eq('Fizz Buzz')
    end

    it 'should ruturn the number for any other number' do
      expect(FizzBuzzer.get(1)).to eq('1')
      expect(FizzBuzzer.get(2)).to eq('2')
      expect(FizzBuzzer.get(4)).to eq('4')
    end

  end

end
