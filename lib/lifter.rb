class Lifter

  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end
  
  def memberships
    Membership.all.select {|member| member.lifter == self}
  end

  def gyms
    self.memberships.map {|member| member.gym}
  end

  def self.avg_lift
    a = Lifter.all.map {|lifter| lifter.lift_total}
    (a.sum/a.length.to_f).round(2)
  end
  
  def total_cost
   self.memberships.map {|member| member.cost}.sum
  end

  def new_membership(cost, gym)
    Membership.new(self, cost, gym)
  end

end
