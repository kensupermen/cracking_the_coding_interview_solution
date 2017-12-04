require './two_sum'

RSpec.describe TwoSum do
  let(:two_sum) { TwoSum.two_sum_n }

  context 'empty array' do
    TwoSum.nums = []
    it 'return nil' do
      expect(two_sum).to eq nil
    end
  end

  context 'array has one value' do
    TwoSum.nums = [1]
    TwoSum.target = 9
    it 'return nil' do
      expect(two_sum).to eq nil
    end
  end

  context 'found 2 value' do
    it 'return 4 and 5' do
      TwoSum.nums = [1, 2, 3, 4, 5]
      TwoSum.target = 9
      expect(two_sum).to include 3, 4
    end
  end

  context 'found 2 value' do
    it 'return 4 and 5' do
      TwoSum.nums = [3, 2, 4]
      TwoSum.target = 6
      expect(two_sum).to include 1, 2
    end
  end

  context 'not found' do
    it 'return nil' do
      TwoSum.target = 1000
      expect(two_sum).to eq nil
    end
  end
end
