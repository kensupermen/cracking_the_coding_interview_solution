class RotateMatrix
  class << self
    attr_accessor :matrix

    def rotate
      # return [] unless matrix.first.count == matrix.count
      matrix.transpose.map &:reverse
    end
  end
end
