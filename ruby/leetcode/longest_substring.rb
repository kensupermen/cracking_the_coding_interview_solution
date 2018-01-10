class LongestSubString
  def length_of_longest_substring(s)
    return 0 if s.length.zero?
    map = Hash.new
    j, max = 0
    s.each_char.with_index do |char, i|
      j = [j, map[i]].max if map.key?(char)
      map = map.merge(char => i)
    end
    max
  end
end


l = LongestSubString.new
p l.length_of_longest_substring("abc")
