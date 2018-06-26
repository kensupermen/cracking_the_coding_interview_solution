# https://leetcode.com/problems/find-the-difference/description/

def find_the_difference(s, t)
  hash_char = { }

  s.split("").each do |c|
    if hash_char[c].nil?
      hash_char[c] = 1
    else
      hash_char[c] += 1
    end
  end

  result = ""
  t.split("").each do |c|
    if !hash_char[c].nil? and hash_char[c] > 0
      hash_char[c] -= 1 
    else
      result << c
    end
  end

  result
end

find_the_difference("abcd", "abcde")
