describe DisappearingKittens do
  describe '#retrieve_directions' do
    xit 'saves the array to the instance variable #directions' do
      subject.retrieve_directions
      expect(subject.directions).to be_an_instance_of(Array)
      expect(subject.directions).to eq(
        %w[forward right forward forward forward left forward forward left right
           forward right forward forward right forward forward left]
      )
    end
  end
end
