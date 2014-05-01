def anagram(str1,str2)
  if str1.length != str2.length
    return false
  end
  arr1=str1.split(//).sort
  arr2=str2.split(//).sort
  length = arr2.length
  for i in 0...length
    if arr1[i] != arr2[i]
      return false
    end
  end
  return true
end



