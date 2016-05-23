#6.5 Modules 5/22/16
cjbg


# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(phrase)
#     "yeeeeehaaaaaaaa" + phrase + "yes!!!!!"
#   end

# self.yell_angrily("I said no more wire hangars")

# self.yelling_happily("I'm Rick James")

# end

module Shout
  def yell_angrily(words)
    puts "#{words}" + "djladjkf;lajk3ljklsd;jfkla;j!3@$%%!@ !!!!"
  end

  def yell_happily(phrase)
    puts "#{phrase}" + "yaaaaaaaaaeahhha!"
  end

  class Quarterback
    include Shout
  end

  class Trader
    include Shout
  end

  marino = Quarterback.new
    marino.yell_angrily("go deep go deep go deep!")

  goldman = Trader.new
    goldman.yell_happily("its bonus time!")

  end


