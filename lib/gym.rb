class Gym

  @@all = []
  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|member| member.gym == self}
  end
  
  def lifters
    self.memberships.map {|member| member.lifter}
  end

  def lift_total
    self.lifters.map {|member| member.lift_total}.sum
  end
end
