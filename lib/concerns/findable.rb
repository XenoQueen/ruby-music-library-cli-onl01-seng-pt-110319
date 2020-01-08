module Concerns::Findable
  
  def find_by_name(name)
    self.all.detect{|obj| }
  end
end