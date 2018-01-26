describe ApiInterraction do
  describe '#retrieve_directions' do
    it 'returns an array of directions from the API get request' do
      expect(subject.retrieve_directions).to be_an_instance_of(Array)
      expect(subject.retrieve_directions).to eq(
        %w[forward right forward forward forward left forward forward left right
           forward right forward forward right forward forward left]
      )
    end
  end
end
