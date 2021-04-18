class Waiter
  attr_accessor :name, :age, :customer, :total, :tip, :waiter, :years, :meal
#attr_reader :waiter, :years
  @@all = []
def initialize(name, years)
  @name = name
  @years = years
  @@all << self
end
def self.all
  @@all
end
 def new_meal(customer, total, tip)
  Meal.new(self, customer, total, tip)# #initializes a meal using the current Waiter instance, a provided Customer instance and a total and tip
 end
 def meals
  Meal.all.select do |meal| meal.waiter == self
   end
end
#####
 # returns the Customer instance associated
 # with the
 # meal that received the largest tip
def best_tipper
#  Meal.all.max_by do |tip| tip.field end
 Customer.all.max {|a,b| a.attr <=> b.attr }
  # max_value = 0
  # Meal.all.each do |tipper|
  #   if tipper > max_value
  #   max_value  == tipper
  #    end
  # end
end
end
