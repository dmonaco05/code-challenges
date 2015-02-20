# This program takes an array from 1-100 and randomly deletes 1 number, these are some solutions to finding that missing number

# Generate the random missing number array
v = 100
array = Array.new
1.upto(v) do |i|
  array << i
end
array.shuffle!
array.delete_at(rand(99))

########################################################################

# 1st way will compare it's sum to the known value of the completed array
# setting limit and determining known
known = ((v+1)*(v/2))
# subtract sum of array from known value to determine missing integer
first = known - (array.inject(:+))
puts "1st method: #{first}"

########################################################################


#  2nd way will create a complete array and compare to find the missing value

second = (1..v).to_a - array
puts "2nd method: #{second.fetch(0)}"

##########################################################################


# 3rd way will start a loop at 1 and increase until the value is missing from array

i = 1
while array.include?(i)
    i += 1
end
puts "3rd method: #{i}"

