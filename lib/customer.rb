require 'pry'

class Customer
  attr_accessor :name, :age, :waiter, :total, :tip, :cutomer, :years, :meal
#  attr_reader  :customer, :years
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
 def new_meal(waiter, total, tip)
Meal.new(waiter, self, total, tip)
 end
def meals
 Meal.all.select {|meal| meal.customer == self}
 end
 #######################
 # returns an Array of Waiter instances
 # associated
 # with this customer's meals

 def waiters
   Waiter.all.select {|waiter|waiter.customer == self}
 end

end
