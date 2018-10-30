require 'rspec'
require 'spiral_matrix'

describe SpiralMatrix do

  describe '#return_result' do
    subject { described_class.return_result(input) }
    let(:input) { [[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20]] }
    let(:expected) { [1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12] }

    it 'returns expected result' do
      expect(subject).to eq expected
    end
  end

  describe '#rotate' do
    subject { described_class.rotate(input) }
    let(:input) { [[6,3,8],[1,2,3],[22,10,6]] }
    let(:expected) { [[8,3,6],[3,2,10],[6,1,22]] }
    

    it 'rotates array' do
      expect(subject).to eq expected
    end
  end
end