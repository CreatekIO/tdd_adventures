describe Anagram do

  describe '.generate' do

    it 'should not include any duplicates' do
      anagrams = Anagram.generate('abc')
      expect(anagrams.count).to eq(anagrams.uniq.count)
    end

    it 'should return the appropriate number of anagrams' do
      anagrams = Anagram.generate('abcd')
      expect(anagrams.count).to eq(24)
    end

    it 'should return all the anagrams' do
      anagrams = Anagram.generate('abb')
      expect(anagrams).to include('abb', 'bab', 'bba')
    end

  end
end

