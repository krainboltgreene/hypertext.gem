module Hypertext
  class Element
    class Transparent
      def initialize(element)
        @element = element
      end

      def valid?
        @element.children.all? do |child|
          child.is_a?(Content::Phrasing) || child.is_a?(Content::Flow)
        end
      end
    end
  end
end
