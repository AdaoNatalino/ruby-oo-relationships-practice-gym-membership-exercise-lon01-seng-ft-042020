# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

#lifter
l1 = Lifter.new("Adao", 50)
l2 = Lifter.new("Leonardo", 20)
l3 = Lifter.new("Caio", 300)

#gyms
g1 = Gym.new("Free_for_All", "London")
g2 = Gym.new("Cross_Fit_Ever", "Amsterda")
g3 = Gym.new("Anabols_in_Vein", "Sao Paulo")
g4 = Gym.new("Just_Say_I_Work_Out", "San Francisco")

#memberships
m1 = Membership.new(l1, 100, g1)
m2 = Membership.new(l1, 20, g2)
m3 = Membership.new(l1, 90, g3)

m4 = Membership.new(l2, 90, g1)
m5 = Membership.new(l2, 90, g3)

m6 = Membership.new(l3, 90, g3)
m7 = Membership.new(l3, 90, g2)



binding.pry

puts "Gains!"
