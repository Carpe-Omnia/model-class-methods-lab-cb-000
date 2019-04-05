class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    if self.all.size > 5
      self.all[0..4]
    else
      self.all
    end
  end

  def self.dinghy
    where("length < 20")
  end

  def self.ship
    where("length >= 20")
  end

  def self.last_three_alphabetically
    self.all.order(name: :desc)[0..2]
  end
  def self.without_a_captain
    where("captain_id = nil")
  end
  def self.sailboats
    #todo
  end
  def self.with_three_classifications
    #todo
  end
end
