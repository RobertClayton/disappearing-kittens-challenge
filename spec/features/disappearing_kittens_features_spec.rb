describe DisappearingKittens do
  describe 'feature: #find_kittens' do
    it 'retrieves directions from the API and finds the Kittens' do
      expect(subject.find_kittens).to eq([5, 2])
    end
  end
end
