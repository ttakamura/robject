module RType::Helper::NumericDelegateR
  def + val
    is_robj_matrix?(val) ? R[:+].call(self, val) : super
  end

  def - val
    is_robj_matrix?(val) ? R[:-].call(self, val) : super
  end

  def / val
    is_robj_matrix?(val) ? R[:/].call(self, val) : super
  end

  def * val
    if is_robj_matrix?(val)
      if val.respond_to?(:is_robj_matrix_multiply?) && val.is_robj_matrix_multiply? &&
          self.respond_to?(:is_robj_matrix_multiply?) && self.is_robj_matrix_multiply?
        R['%*%'].call(self, val)
      else
        R[:*].call(self, val)
      end
    else
      super
    end
  end

  def ** val
    is_robj_matrix?(val) ? R[:**].call(self, val) : super
  end

  private
  def is_robj_matrix? val
    val.is_a?(RType::Vector) || val.is_a?(RType::Matrix)
  end
end
