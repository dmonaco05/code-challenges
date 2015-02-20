# This program takes an array from 1-100 and randomly deletes 1 number, these are some solutions to finding that missing number

# Generate the random missing number array
array = Array.new
1.upto(100) do |i|
  array << i
end
array.shuffle!
array.delete_at(rand(99))

# 1st way will take the unsorted array, and compare it's sum to the known value of the completed array

# setting limit and determining known
v = 100
known = ((v+1)*(v/2))
# subtract sum of array from known value to determine missing integer
first = known - (array.inject(:+))
puts "1st method: #{first}"

#################################################################################################


#  2nd way will create a complete array and compare to find the missing value

v = 100
second = (1..v).to_a - array
puts "2nd method: #{second}"

###################################################################################################


# 3rd way will start a loop at 1 and increase until the value is missing from array

i = 1
while array.include?(i)
    i += 1
end
puts "3rd method: #{i}"
