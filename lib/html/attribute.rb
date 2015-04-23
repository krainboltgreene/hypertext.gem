module Hypertext
  class Attribute
    def initialize(name:, value:)
      @name = name
      @value = value
    end

    def eql?(other)
      name == other.name
    end

    def to_s
      "#{name}=\"#{value}\""
    end

    def inspect
      "<#{self.class.name} #{to_s}"
    end

    def name
      @name
    end

    def value
      @value
    end
  end
end
