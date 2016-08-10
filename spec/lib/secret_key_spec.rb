describe 'SecretKey' do
  let(:unencrypted_list) { [1, 3, 27, 16, 3, 11, 21] }
  let(:key) { 3 }
  let(:encrypted_list) { [1, 27, 16, 11, 21] }
  let(:positions) { [1, 4] }

  describe "#hide" do
    # the SecretKey.hide function removes all occurrences of the key (an integer) from the list (array of integers)
    # and returns the resulting list, along with the original positions of the key (array of indexes)

    it "hides the secret key from Warlord Dave and returns the original key's positions" do
      results = SecretKey.hide(unencrypted_list, key)
      expect(results).to include(:encrypted, :positions)
      expect(results[:encrypted]).to eq(encrypted_list)
      expect(results[:positions]).to eq(positions)
    end
  end

  describe "#show" do
    it "reassembles the encrypted list using the secret key" do
      results = SecretKey.show(encrypted_list, positions, key)
      expect(results).to eq(unencrypted_list)
    end
  end
end