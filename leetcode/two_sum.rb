class TwoSum
  class << self
    attr_accessor :nums, :target

    # how about if it has more one result?

    def two_sum_n
      arr_hash = Hash.new

      nums.each_with_index do |e, i|
        return arr_hash[target - e], i if arr_hash[target - e]
        arr_hash = arr_hash.merge(e => i)
      end
      nil
    end
  end
end

