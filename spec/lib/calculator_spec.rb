describe Calculator do

  describe '#add' do
    it 'should be able to add numbers' do
      expect(Calculator.add(5, 4)).to eq(9)
    end
  end

  describe '#subtract' do
    it 'should be able to substract numbers' do
      expect(Calculator.subtract(100, 11)).to eq(89)
    end
  end

end