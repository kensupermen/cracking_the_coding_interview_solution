require './rotate_matrix'

RSpec.describe RotateMatrix do
  let(:rotate_matrix) { RotateMatrix.rotate }

  context 'rotate matrix N x N' do
    RotateMatrix.matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

    it 'return rotated' do
      expect(rotate_matrix).to eq [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
    end
  end

  context 'rotate matrix N x M' do
    RotateMatrix.matrix = [[1, 2], [4, 5], [7, 8]]

    it 'return rotated' do
      expect(rotate_matrix).to eq []
    end
  end
end
