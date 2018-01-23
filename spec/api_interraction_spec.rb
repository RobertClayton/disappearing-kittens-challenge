describe ApiInterraction do
  describe '#retrieve_directions' do
    it 'returns an array of directions from the API get request' do
      expect(subject.retrieve_directions).to be_an_instance_of(Array)
    end
  end
end
