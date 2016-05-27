# Virus Predictor

# I worked on this challenge [by myself, with Steven King. There was no other cohort-mate ].
# We spent 1 hour on this challenge.

require_relative 'state_data'

# my_solutions file needs state_data file in order to proceed. The relative component is simply that it resides in the same directory.

class VirusPredictor

# standard initialization of new instance of VirusPredictor class, taking state, popdens and pop as parameters to proceed. Then sets state, popdens and pop to instance variables.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# taking popdens, pop and state from new instance of VirusPredictor and calling 2 methods: predicted_deaths and speedofspread. Then goes into a private method.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# creating method using popdens pop and state data and creating conditional statement based on population to generate printout of estimated loss of life.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# create method using popdens, state to find speed of spread based on popdens. Outputs result to screen.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE

# initialize VirusPredictor for each state

# do it one time for each of the 50 states { ppo dens pop }

STATE_DATA.each do |state_name, data|
  state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])

state.virus_effects

end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# two different hash syntax formats deployed is that one uses a hashrocket to separate value (which is another hash) from key (state), and then inside the value hash, colons are used to separate value from key.

# require relative answered above.

# iterating through hash includes each, map, times, until, when.

# When refactoring virus_effects it was clear that two of the parameters used to call the method were shared between each other. It was then pointed out to me that since they were instance variables they were, in essence, redundant in being called for during the method call, so I removed them as the method had access to them already.

=begin Probably just iterating over a hash. I saw that state data was a nested data structure immediately and reading on, quickly concluded that it would be more efficient to run one call instead of generating 50 separate commands. A little bit of everything (when I saw the require_relative state_data line I was afraid it was going to be a mammoth RSpec Baatan death march. I was pleasantly surprised.
=end


