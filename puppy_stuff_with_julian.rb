#copied from Julians Slack message to me - can't locate his github repo. he drove.

class Puppy
    def initialize
        puts "Initializing new puppy instance..."
    end
    def fetch(toy)
       puts "I brought back the #{toy}!"
       toy
     end

     def speak(quantity)
         x = "Woof!"
        quantity.to_i.times do
            puts x
        end
     end
    def roll_over
         puts "​*roll over*​"
     end
     def dog_years(human_years)
         dog_years = human_years/7
         puts "I'm #{dog_years} years old!"
     end
     def agenda(item1, item2, item3)
         puts "Guess what I did today?"
          puts "I #{item1} today."
          puts "I #{item2} today."
          puts "I #{item3} today."
    end

end

#Driver code
=begin
fred = Puppy.new
fred.fetch("ball")
fred.speak(4)
fred.roll_over
fred.dog_years(100)
fred.agenda("laid down", "slept", "slept while lying down")
=end

#use loop to make 50 instances
#store each instance in data structure
#iterate through each element in array
generic_name = "puppy"
puppy_hash = {}
count = 1

until count == 51
    puppy_hash[generic_name + count.to_s] = Puppy.new
    count += 1
end


puppy_hash.each do |name, puppy|
    puts "this is #{name}"
    puppy.speak(4)
    puppy.roll_over
    puppy.dog_years(30)
    puppy.agenda("laid down", "slept", "slept while lying down")
    puts "\n"
end