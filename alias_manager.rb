# 5.6 Release 0

# real name = Felicia Torres,
# Create fake name by swapping first and last
# Changing all vowels (a,e,i,o,u) to next vowel
# All consonants to next consonant (a => e, d => etc.)

# Release 1

# Provide user interface allowing user name and returning fake name
# loop until user inputs quit

# Release 2

# Use data structure to store fake names as entered
# when user exits iterate thru and print all data user entered
# syntax = "Vissuit Gimodoe is actually Felicia Torres" is fine.

def word_swap(word_pair)
  word_pair.split(' ').reverse.join(' ')
end

# p word_swap('Felicia Torres') == "Torres Felicia"

def vowel_swap(string)
  answer = ''
  characters = string.split('')
  vowels = 'aeiou'
  vowel_map = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'}

  #look at  characters
  characters.each do |character|
    if vowels.include?(character)

    #if its a vowel, swap and put in answer
      answer += vowel_map[character]
    else
    #otherwise put it in answer
      answer += character
    end
  end
  answer
end

# p vowel_swapper('abc de') == 'ebc di'
# p vowel_swapper('ux c') == 'ax c'

def consonent_converter(cons)
  if cons == 'z'
    'b'
  else
    legend = "bcdfghjklmnpqrstvwxyz"
    #1. find where we are
    current_location = legend.index(cons)
    #2. get the next number
    next_location = current_location + 1
    #3. return the letter of that number
    next_letter = legend[next_location]
  end
end

# p cons_to_cons_converter('z') == 'b'
# p cons_to_cons_converter('f') == 'g'

def consonent_swap(str)
  characters = str.chars
  answer = ''
  cons = "bcdfghjklmnpqrstvwxyz"

  characters.each do |character|
    if cons.include?(character.downcase)
    #   #swap it + add it
      swapped_letter = consonent_converter(character.downcase)
      answer += swapped_letter
    else
    #otherwise put it in answer
      answer += character
    end
  end
  answer
end

# p consonent_swap('abc dez') == 'acd feb'

def name_aliaser(agent)
  #1. swap the words
  reversed_agent = word_swap(agent)
  #2. sub out all the vowels
  name_vowel_switched = vowel_swap(reversed_agent)
  #3. sub out all the consants
  name_con_switched = consonent_swap(name_vowel_switched)

  name_con_switched.split(' ').map{|name| name.capitalize}.join(' ')
  # "vussit gimodoe" => ["vussit", "gimodoe"] =>["Vussit", "Gimodoe"]
end

# p name_aliaser('Felicia Torres') == "Vussit Gimodoe"

#Release 1 + 2

spy = 'a'
all_spies = {}

loop do
  puts "Enter the spy name - First Last, use quit to exit"
  spy = gets.chomp

  if spy == 'quit' || spy == ''
    break
  end

  puts name_aliaser(spy)
  all_spies[spy] = name_aliaser(spy)
end
puts '==================='
puts 'Here are all that came before you!'
puts '==================='

all_spies.each do |key, value|
  puts "#{key} was actually #{value}!"
end