describe DisappearingKittens do
  describe 'feature: #find_kittens' do
    it 'retrieves directions from the API and finds the Kittens' do
      expect(subject.find_kittens).to eq("{\"message\":\"The search party has already recovered the kittens and they're happily back at home. Please zip up your code and send it to richard.hart@which.co.uk\"}")
    end
  end
end
