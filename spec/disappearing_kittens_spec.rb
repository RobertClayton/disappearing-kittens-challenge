describe DisappearingKittens do
  let(:directions) do
    %w[forward right forward forward forward left forward forward left right
       forward right forward forward right forward forward left]
  end

  describe '#current_location' do
    it 'returns the current location in the format [x, y]' do
      expect(subject.current_location).to eq([0, 0])
    end
  end
end
