#standard test given to entry level programmers
#print numbers from 1 to 100, for multiples of 3 print fizz, for multiples of 5 print buzz and print fizzbuzz
#for multiples of both 3 and 5

1.upto(100) do |n|
  if n % 3 == 0 && n % 5 == 0
    puts "FizzBuzz"
  elsif n % 3 == 0
    puts "Fizz"
  elsif n % 5 == 0
    puts "Buzz"
  else
    puts n
  end
end