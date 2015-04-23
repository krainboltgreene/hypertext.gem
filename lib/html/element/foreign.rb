module Hypertext
  class Element
    module Foreign
      def type
        Foreign
      end

      def end_tag?
        false
      end
    end
  end
end
