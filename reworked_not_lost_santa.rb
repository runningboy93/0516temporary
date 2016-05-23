#6.3 Santa

class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    bad_reindeer = @reindeer_ranking.delete(reindeer)<< bad_reindeer
    # @reindeer_ranking.push(bad_reindeer)
  end

  # def age
  #   @age
  # end
  #
  # def ethnicity
  #   @ethnicity
  # end
  #
  # def gender=(value)
  #   @gender = value
  # end
end

# Johann = Santa.new('tri', 'Blaucasian')
#
# Johann.speak
#
# Johann.eat_milk_and_cookies('black and white')
#
# puts Johann.age
# Johann.celebrate_birthday
# puts Johann.age
#
# puts Johann.reindeer_ranking
# Johann.get_mad_at('Rudolph')
# puts Johann.reindeer_ranking



sample_gen = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
sample_ethnic = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

55.times do
  random_santa = Santa.new(sample_gen.sample, sample_ethnic.sample)

  random_santa.age = rand(1..140)

  puts random_santa.age

  puts random_santa.ethnicity

  puts random_santa.gender
end