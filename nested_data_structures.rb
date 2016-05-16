# #5.5 Nested Data Structure

# library example.


library = {
  'fiction' => {
    'top_author' => 'King',
    'top_genre' => "ya",
    'shelf_space' => 33,
     "top_publishers" => ["Random House", "McMillan McGraw Hill", "DK"]
  },
  'social_sciences' => {
    'top_author' => 'Krugman',
    'top_genre' => "Political_Science",
    'shelf_space' => 14,
     "top_publishers" => ["Random House", "McMillan McGraw Hill", "DK"]
  },
  'computer_languages' => {
    'top_author' => 'Black',
    'top_titles' => ["Bastards Guide", "Ruby The Hard Way", "Ruby in a Day"],
    'inside' => ["table_of_contents", "index", "sample_page1", "sample_page2", "footnotes", "back_cover"],
    'shelf_space' => 3,
     "top_publishers" => ["Manning", "DK", "GooglePress"]
   }
}

puts library['fiction']["top_publishers"][0]
puts library['social_sciences']['top_author']
puts library['computer_languages']['inside'][4]

library["computer_languages"]["top_publishers"].each do |publisher|
  puts "please acknowledge #{publisher} for their continued excellence in computer_langugage production."
  end