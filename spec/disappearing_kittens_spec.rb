describe DisappearingKittens do
  let(:subject) { DisappearingKittens.new('north') }
  let(:directions) do
    %w[forward right forward forward forward left forward forward left right
       forward right forward forward right forward forward left]
  end

  describe '#current_location' do
    it 'returns the current location in the format [x, y]' do
      expect(subject.current_location).to eq([0, 0])
    end
  end

  describe '#current_direction' do
    it 'returns the current direction' do
      expect(subject.current_direction).to eq('north')
    end
  end

  describe '#direction_value' do
    it 'north is equal to [0, 1]' do
      expect(subject.direction_value['north']).to eq([0, 1])
    end

    it 'east is equal to [1, 0]' do
      expect(subject.direction_value['east']).to eq([1, 0])
    end

    it 'south is equal to [0, -1]' do
      expect(subject.direction_value['south']).to eq([0, -1])
    end

    it 'west is equal to [-1, 0]' do
      expect(subject.direction_value['west']).to eq([-1, 0])
    end
  end

  describe '#change_rotation' do
    let(:subject_east) { DisappearingKittens.new('east') }
    let(:subject_south) { DisappearingKittens.new('south') }
    let(:subject_west) { DisappearingKittens.new('west') }

    it 'faces west when turning left from north' do
      subject.change_rotation(-1)
      expect(subject.current_direction).to eq('west')
    end

    it 'faces east when turning right from north' do
      subject.change_rotation(1)
      expect(subject.current_direction).to eq('east')
    end

    it 'faces north when turning left from east' do
      subject_east.change_rotation(-1)
      expect(subject_east.current_direction).to eq('north')
    end

    it 'faces south when turning right from east' do
      subject_east.change_rotation(1)
      expect(subject_east.current_direction).to eq('south')
    end

    it 'faces east when turning left from south' do
      subject_south.change_rotation(-1)
      expect(subject_south.current_direction).to eq('east')
    end

    it 'faces west when turning right from south' do
      subject_south.change_rotation(1)
      expect(subject_south.current_direction).to eq('west')
    end

    it 'faces south when turning left from west' do
      subject_west.change_rotation(-1)
      expect(subject_west.current_direction).to eq('south')
    end

    it 'faces north when turning right from west' do
      subject_west.change_rotation(1)
      expect(subject_west.current_direction).to eq('north')
    end
  end

  describe '#move_forward' do
    let(:subject_east) { DisappearingKittens.new('east') }
    let(:subject_south) { DisappearingKittens.new('south') }
    let(:subject_west) { DisappearingKittens.new('west') }

    it 'increments #current_location [0, 1] when #current_direction is north' do
      subject.move_forward
      expect(subject.current_location).to eq [0, 1]
    end

    it 'increments #current_location [1, 0] when #current_direction is east' do
      subject_east.move_forward
      expect(subject_east.current_location).to eq [1, 0]
    end

    it 'increments #current_location [0, -1] when #current_direction is south' do
      subject_south.move_forward
      expect(subject_south.current_location).to eq [0, -1]
    end

    it 'increments #current_location [-1, 0] when #current_direction is west' do
      subject_west.move_forward
      expect(subject_west.current_location).to eq [-1, 0]
    end
  end
end
