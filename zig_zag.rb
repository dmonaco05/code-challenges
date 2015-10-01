# Function that takes an array and returns an array as ordered [[max, min], [2nd max, 2nd min],....]

def zig_zag(array)
	array.sort!
	zig_zag = []
	if array.length % 2 > 0  
		zig_zag << array.pop 
		zig = array.each_slice(array.length/2).to_a.last
		zag = array.each_slice(array.length/2).to_a.first
	
		zig.length.times do
			zig_zag << zag.shift
			zig_zag << zig.pop
		end
	else
		zig = array.each_slice(array.length/2).to_a.last
		zag = array.each_slice(array.length/2).to_a.first
	
		zig.length.times do
			zig_zag << zig.pop
			zig_zag << zag.shift
		end
	end

	return zig_zag.each_slice(2).to_a
end
