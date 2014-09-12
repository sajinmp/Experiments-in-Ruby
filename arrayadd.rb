def ArrayAdditionI(arr)

  #ArrayAddition([1,2,3,6]) #=> False	
  #ArrayAddition([1,2,3,5]) #=> True	(3 + 2 = 5)

  max = arr.sort[-1]
  arr.delete(max)
  n = arr.length
  for i in 1..n
    y = arr.combination(i).to_a
    for j in y
      if max == j.inject(:+)
        return true
      end
    end
  end
  return false
end
   
# Return True if any combination of numbers in the array can be added up to equal the largest number in the array
# Otherwise Return False 
# The array should not be empty, shou;d not contain all the same elements, and can contain negative numbers.
print "Enter the array : "
print ArrayAdditionI(gets.chomp.split.map {|i| i.to_i})

