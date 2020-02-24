class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activation
    if self.active == false
      return true
    else
      return false
    end
  end
end