describe DisappearingKittens do
  describe '#get_directions' do
    it 'returns an array from the API get request' do
      expect(subject.retrieve_directions).to be_an_instance_of(Array)
    end

    it 'saves the hash to the instance variable directions' do
      subject.retrieve_directions
      expect(subject.directions).to be_an_instance_of(Array)
      expect(subject.directions).to eq(
        %w[forward right forward forward forward left forward forward left right
           forward right forward forward right forward forward left]
      )
    end
  end
end
