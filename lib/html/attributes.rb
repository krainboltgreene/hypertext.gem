module Hypertext
  class Attributes
    def initialize(attributes:)
      @attributes = attributes
    end

    def to_s
      attributes.map(&:to_s).join(" ")
    end

    def inspect
      "<#{self.class.name} #{attributes.join("; ")}>"
    end

    def attributes
      @attributes.uniq
    end
    private "attributes"
  end
end
