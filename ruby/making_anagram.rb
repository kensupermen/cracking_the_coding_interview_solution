a = gets.strip
b = gets.strip


def getDelta(array1, array2)
  delta = 0
  if array1.size != array2.size
    -1 # TODO: handle error
  end

  for i in 0..array1.size - 1
    delta = delta + (array1[i] - array2[i]).abs
  end
  delta
end

def getCharsCount(str)
  charsCount = Array.new(26, 0)
  for i in 0..str.size - 1
    code = str[i].ord - 'a'.ord
    charsCount[code] = charsCount[code] + 1
  end
  charsCount
end

def main(strFirst, strSecond)
  p getDelta(getCharsCount(strFirst), getCharsCount(strSecond))
end

main(a, b)
