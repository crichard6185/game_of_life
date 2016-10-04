require_relative '../game_of_life'

# integration test
describe GameOfLife do
  let(:starting_grid_array) do
    [
      [ "X", "-", "X", "-"],
      [ "-", "-", "-", "-"],
      [ "-", "X", "X", "-"],
      [ "X", "X", "X", "X"],
    ]
  end

  let(:ending_grid_array) do
    [
      [ "-", "-", "-", "-"],
      [ "-", "-", "-", "-"],
      [ "X", "-", "-", "X"],
      [ "X", "-", "-", "X"],
    ]
  end

  subject { described_class.new starting_grid_array }

  describe '#tick' do
    it 'after one tick it should mutate grid correctly' do
      expect(subject.current_grid_array).to eq(starting_grid_array)

      subject.tick

      expect(subject.current_grid_array).to eq(ending_grid_array)
    end
  end
end
