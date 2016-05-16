# 5.2 arrays

# release 2 arrays in methods

def addarr(arr1, item2)
    addarr = [arr1, item2]
end

puts addarr(["bob", "joe", "mickey"] , 14)

def newarraymeth(x,y,z)
  newarraymeth = []
  newarraymeth << x << y << z
end

puts newarraymeth("dog", "cat", "lizard")

newblankarray = []
p newblankarray

newblankarray << "bedroom" << "kitchen" << "living_room" << "garage" << "den"
p newblankarray

newblankarray.delete_at(2)
p newblankarray

newblankarray.insert(2, "attic")
p newblankarray

newblankarray.drop(1)
p newblankarray

query_room = ""
puts "Looking for something?"
query_room = gets.chomp
    if newblankarray.include?(query_room)
        p "Yes, the #{query_room} is contained in the master plan!"
        else
        p  "No, I'm sorry, a #{query_room} just wouldn't work here."
    end

yet_another_array = ["baseball" , "apple pie", "socialism"]

thirdarray = newblankarray + yet_another_array
p thirdarray

