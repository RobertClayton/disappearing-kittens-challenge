describe DisappearingKittens do
  describe '#get_directions' do
    it 'returns a Hash from the API get request' do
      expect(subject.get_directions).to be_an_instance_of(Hash)
    end
  end
end
