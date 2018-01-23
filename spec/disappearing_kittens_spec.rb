describe DisappearingKittens do
  describe '#get_directions' do
    it 'returns a Hash from the API get request' do
      expect(subject.retrieve_directions).to be_an_instance_of(Hash)
    end

    it 'saves the hash to the instance variable directions' do
      expect(subject.directions).to be_an_instance_of(Hash)
      expect(subject.directions).to eq(
        directions: %w[forward right forward forward forward left forward
                       forward left right forward right forward forward right
                       forward forward left]
      )
    end
  end
end
