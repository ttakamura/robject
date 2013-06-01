module RType
  module Helper
    module RObjDelegatable
      def self.included(klass)
        klass.extend ClassMethods
      end

      delegate_to_R '=~' => '=='
      delegate_to_R '+', '*', '-', '/', '>', '<', '>=', '<=', '|', '&', '^'

      def __getobj__
        to_ruby
      end

      def robj
        @robj ||= convert_ruby_to_robj.tap{ @ruby_obj = nil }
      end

      def ruby_obj
        @ruby_obj ||= convert_robj_to_ruby.tap{ @robj = nil }
      end

      def as_r
        robj.as_r
      end

      def to_ruby mode = nil
        ruby_obj
      end

      def inspect
        "RType::#{(@robj || @ruby_obj).inspect}"
      end

      private
      def convert_robj_to_ruby
        @robj.to_ruby(::RSRuby::BASIC_CONVERSION)
      end

      def convert_ruby_to_robj
        if @ruby_obj.respond_to?(:as_r)
          @ruby_obj.as_r.robj
        else
          R.assign('_tmp_var_for_rtype', @ruby_obj).robj
        end
      end
    end
  end
end
