module RType
  class Numeric < Base
    def self.match? robj, type
      type == 'numeric'
    end
  end
end
