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
end
