# This program takes an array from 1-100 and randomly deletes 1 number, these are all the solutions to finding that missing number

# Generate the random missing number array
array = Array.new
1.upto(100) do |i|
  array << i
end

array.delete_at(rand(99))

# 1st way will take the unsorted array, and compare it's sum to the known value of the completed array

# setting limit and determining known
v = 100
known = ((v+1)*(v/2))
# subtract sum of array from known value to determine missing integer
known - (array.inject(:+))


#################################################################################################


#  2nd way will create a complete array and compare to find the missing value

v = 100
(1..v).to_a - array


###################################################################################################


# 3rd way will start a loop at 1 and increase until the value is missing from array

i = 1
while array.include?(i)
    i += 1
end
puts i
