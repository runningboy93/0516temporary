# 5.4 method taking a block

def this_hurts
  puts "My brain hurts because"
  yield("so obtuse", "so seemingly pointless")
end

this_hurts{ |a , b| puts "I don't understand why blocks seem #{a} and why they feel #{b}. I clearly need help..."}

newarr = ["Bob", "Jim", "Ted", "Dave"]
p newarr
newarr.each_with_index do |str, idx|
  puts "#{str} used to be best friends with #{newarr[idx-1]} but is now closer to #{newarr[idx-2]}."
end
p newarr

newhash = {"Don" => 14, "Hector" => 21, "Michael" => 24}
p newhash
newhash.each do |name, newage|
  puts "#{name}'s record was corrected to reflect his actual age: #{newage}."
end

# Do The Thing Arrays

# delete anything less than 25
newnumbers = [1, 22, 4, 44, 32, 5, 94, 18]
p newnumbers
newnumbers.delete_if { |number| number < 25}
p newnumbers

# keep only if divisible by 3
newer_array = [11, 33, 4, 99, 15, 12, 35, 19]
p newer_array
newer_array.keep_if { |number| number % 3 == 0}
p newer_array

# use variables this time as well.
x = 200
y = 201
newest_array = [2, 22, 143, 13, 9, 25, 11, 44, x, y, 31, 34]
p newest_array

# keep if it's an even number
newest_array.keep_if { |num| num %2 == 0 }
p newest_array

# keep only last half of array
last_array = "abcdefghijklmno".split('')
p last_array
midpoint = (last_array.length / 2).to_i
newlastarray = last_array.drop(midpoint)
p newlastarray


# Do The Thing Hashes
hash_one = {"Kale" => 12, "Spinach" => 23, "Broccoli Rabe" => 5}
hash_one.each { |veg, rda| puts "The USRDA nutritional daily requirement for #{veg} is #{rda} mg." }

hash_two = {"Bernie Sanders" => 1200, "Hillary Clinton" => 1802, "Donald Trump" => 1301, "Ted Cruz" => 398, "John Kasich" => 12}
hash_two.each { |name, delg| puts "Only candidates with more than 1,300 delegates can continue. The current tally is: #{name} with #{delg} delegates." }
hash_two.delete_if { |name, delg| delg < 1300 }
puts "Under these rules, the only eligible candidates are:"
hash_two.each { |name, delg| puts "#{name} with #{delg} total delegates." }