

# # 7- 19:  encrypt method advancing every string letter forward one step.
# # decrypt method reversing the process.

# Release 5: Adding user input to ask if they would like to encrypt or decrypt a password, ask for password, run method, print results and exit.

puts "Would you like to encrypt or decrypt a password. Enter 'e' for encrypt or 'd' for decrypt."
agent_choice = gets.chomp

puts "Please enter the password."
@@password = gets.chomp

if agent_choice == "e"
   puts encrypt(password)
elsif agent_choice == "d"
   puts rot13(password)
else
    puts "sorry, not an option. Goodbye."
end

def encrypt(password)
  i = 0
  answer = ""
  while i < password.length
    curr_letter = password[i]
    next_letter = curr_letter.next
    answer += next_letter
    i += 1
  end
  p answer
end

# if curr_letter == "z"
#   answer = "a"
# end

# puts encrypt("hotshotstuff")

# found rot13 translation table that allows a form of mapping. also avoids edge cases!

def rot13(password)
    return password.tr("abcdefghijklmnopqrstuvwxyz" , "zabcdefghijklmnopqrstuvwxy")
end

# puts rot13("verysecret")

#  adding nested method swordfish

# rot13(encrypt("swordfish"))

# uploading to meet delivery deadline - still debugging.
