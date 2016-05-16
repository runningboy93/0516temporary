#5.3 Release 3 Use a Hash in a Program

#begin designers tracking choices of each client including name, age, number of children, decor theme, likes dark colors, has mutliple homes? What their kids refer to them as.
#end

# get input of data

#convert to right data type

puts "please gather the following information for the database. What is client's full name?"
vfulname = gets.chomp

puts "how old is the client?"
vage = gets.chomp.to_i

puts "how many children does the customer have?"
vkids = gets.chomp.to_i

puts "any preferred decor theme we should know about?"
vdecor = gets.chomp

puts "how does the client feel about dark colors"
vdarkness = gets.chomp

puts "if more than 1, how many homes does the customer own?"
vhome_count = gets.chomp.to_i

puts "how do your kids refer to you?"
vkid_alias = gets.chomp

client_base = {:fullname => vfulname,
  :age => vage, :kids => vkids,
  :decor => vdecor, :darkness => vdarkness,
  :home_count =>vhome_count,
  :kid_alias => vkid_alias }
p client_base

puts '======'

puts "Please review. is there any section you would like to amend? (y/n)"
  query = gets.chomp

  if query == "y"
    puts "Which section needs updating?"
      chg_key = gets.chomp.to_sym

    puts "And the new entry is?"
      chg_val = gets.chomp

    client_base[chg_key] = chg_val
    # client_base.merge!(client_base_add)

    puts '======================='
    puts "Thank you, here is the updated summary:"
    puts '======================='
    puts client_base

  else
    puts '======================='
    puts "Thank you, here is the current summary  on file:"
    puts '======================='
    puts client_base
  end


# print hash back once all questions answered

# give user opportunity to update a key (no loop - once is ok)

# print latest version and exit
