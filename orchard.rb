# sidiron - cawinter2012

class Orchard
  
  attr_reader :total_harvest
  attr_reader :age
  attr_reader :count
  attr_reader :trees
  
  def initialize
    @total_harvest = 0
    @count = 0
    @trees = []
  end
  
  def plant(amount)
    amount.times do @trees.push(Tree.new)
      end
    @count = @trees.size
  end 
  
  def wait_a_year
    @trees.each_index {|x| @trees[x].grow}
    @trees.each_index {|x| @total_harvest = @total_harvest + @trees[x].harvest}
  end

  def fruitful?
    @total_harvest > 0
  end
   
end

class Tree

  attr_reader :harvest
  
  def initialize
    
    @harvest = 0
    
  end

  def fruitful?
    @harvest > 0
  end
  
  def grow
    @harvest = @harvest + 20
  end
  
end

my_trees = Orchard.new
my_trees.plant(10)
puts "There are #{my_trees.count} trees in the Orchard."
puts "Total harvest weighs #{my_trees.total_harvest} lbs."
my_trees.wait_a_year
puts "After a year, total harvest weighs #{my_trees.total_harvest} lbs."
if my_trees.trees.first.fruitful? 
  puts "The first tree that was planted is fruitful."
end