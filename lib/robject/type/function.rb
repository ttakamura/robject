module RObject
  class Function < Base
    def self.match? robj, type
      type == 'function'
    end
  end
end