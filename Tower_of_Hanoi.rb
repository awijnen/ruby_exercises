### FINAL ###
class Hanoi
  attr_accessor :peg1, :peg2, :peg3

  def initialize
    @peg1 = [1,2,3,4,5,6,7,8,9]
    @peg2 = []
    @peg3 = []
  end

  def move_discs(n,from,to,via)
    if n == 1
      to.unshift(from.shift)
    else
      move_discs(n-1,from,via,to)
      move_discs(1,from,to,via)
      move_discs(n-1,via,to,from)
    end
  end


  def run(number_of_discs)
    @peg1 = (1..number_of_discs).to_a
    puts "Peg 1 is #{@peg1} at start."
    move_discs(number_of_discs,@peg1, @peg3, @peg2)
    puts "Peg 3 is #{@peg3} at end."
  end

end

tower = Hanoi.new
tower.run(10)




########### FIRST VERSION ##################

class TowerOfHanoi


  attr_accessor :first_peg, :second_peg, :third_peg

  def initialize
    @first_peg = [1,2,3,4]
    @second_peg = []
    @third_peg = []
  end
   
  # Move the disks from one peg to another following the rules of Hanoi.
  #
  # number_of_disks - the total number of disks
  # from - the starting peg (array)
  # to - the ending (goal) peg (array)
  # via - the remaining peg (array) (b in this case)
  #

  def one_disc(from, to) # gets two arrays as inputs
    to.unshift(from.shift) # take the top disc off of the from-peg, and put it a top the to-peg 
  end

  def two_disc(from, to, via) # gets three arrays as inputs
    one_disc(from, via)
    one_disc(from, to)
    one_disc(via, to)
  end

  def three_disc(from, to, via) # gets three arrays as inputs
    two_disc(from, via, to)
    one_disc(from, to)
    two_disc(via, to, from)
  end

  def four_disc(from, to, via) # gets three arrays as inputs
    three_disc(from, via, to)
    one_disc(from, to)
    three_disc(via, to, from)
  end

  # # In case you want to have five discs ==> make sure to change array a to a = [1,2,3,4,5]
  # def five_disc(from, to, via) # gets three arrays as inputs
  #   four_disc(from, via, to)
  #   one_disc(from, to)
  #   four_disc(via, to, from)
  # end

  def move_disc(number_of_discs,from,to,via)
    # if number_of_discs == 1
    #   # move a disc from one array to another
    # else
    #   # make the recurssion happen here
    #   # you might need to call the method multiple times
    #   # to get things right.
    # end
    # to

    case number_of_discs
    when 1
      one_disc(from, to)
      # puts "moving 1 disc from #{from} to #{to}"
    when 2
      two_disc(from, to, via)
      # puts "moving 2 discs from #{from} to #{to} via #{via}"
    when 3
      three_disc(from, to, via)
      # puts "moving 3 discs from #{from} to #{to} via #{via}"
    when 4
      four_disc(from, to, via)
      # puts "moving 4 discs from #{from} to #{to} via #{via}"
    end

    # print out results after moving discs
    puts "First peg now has:"
    puts @first_peg
    puts "Second peg now has:"
    puts @second_peg
    puts "Third peg now has:"
    puts @third_peg

  end

end
 
# here we go!
tower = TowerOfHanoi.new

tower.move_disc(4,tower.first_peg, tower.second_peg, tower.third_peg)










############## TEACHER NOTES #################




# LETS GET READY TO RECURSE!!!!!!
#
# Tower of Hanoi
#
# You have 4 discs which vary in size from small to large
# There are 3 pegs, A, B, C, respectively
#
# The discs are all currently on peg A, with the largest disc on the bottom,
# and the smallest disc on the top.
#
#
# |      - 1 -     |                 |                 |
# |     -- 2 --    |                 |                 |
# |    --- 3 ---   |                 |                 |
# |   ---- 4 ----  |                 |                 |
# _________A________________B_________________C_________
#
#
# Get the discs from peg A to peg C.
#
# Rules:
# - Only one disk may be moved at a time.
# - Each move consists of taking the upper disk from one of the pegs and sliding
#   it onto another peg, on top of the other disks that may already be present on that peg.
# - No disk may be placed on top of a smaller disk (can't put disc 4 on top of disc 1).
#
# One method for setting this up might look like:
#
# a = [1,2,3,4]
# b = [] # empty Array
# c = [] # empty Array
#
# Then, as you move items(discs) between Arrays(pegs), you can't ever allow
# a larger number occurs before a smaller one in any Array, like:
#
# c = [2,1] # WRONG!
#
# Write a method that will call itself recursively until the discs are stacked on the C peg
# with the largest (4) on the bottom and the smallest (1) on top. So, write that method so
# that in the end the numbers are in the same order but in Array c.
#
 
