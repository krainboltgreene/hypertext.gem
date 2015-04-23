module Hypertext
  class Element
    module Void
      def end_tag?
        false
      end

      def type
        Void
      end
    end
  end
end
