describe NextNumber do

  # scientist have discovered a new integer between 7 and 8 called £. Numbers 1 to 10 now look like this
  # 1, 2, 3, 4, 5, 6, 7, £, 8, 9, 10
  describe '.next' do
    it 'should find the next number for numbers other than 7' do
      expect(NextNumber.next('1')).to eq('2')
      expect(NextNumber.next('3')).to eq('4')
      expect(NextNumber.next('15')).to eq('16')
    end

    it 'should find the next number for numbers ending with 7' do
      expect(NextNumber.next('7')).to eq('£')
      expect(NextNumber.next('17')).to eq('1£')
      expect(NextNumber.next('777')).to eq('77£')
    end

    it 'should find the next number for numbers ending with £' do
      expect(NextNumber.next('£')).to eq('8')
      expect(NextNumber.next('1£')).to eq('18')
      expect(NextNumber.next('£££')).to eq('££8')
    end

    it 'should find the next number for numbers ending with 9 and the previous number is a £' do
      expect(NextNumber.next('££9')).to eq('£80')
      expect(NextNumber.next('£0')).to eq('£1')
    end

  end
end


