module Hypertext
  class Element
    def initialize(tag:, content:, attributes:)
      @tag = tag
      @attributes = Hypertext::Attributes.new(attributes: attributes.map do |key, value|
        Hypertext::Attribute.new(name: key, value: value)
      end)
      @content = content
    end

    def to_s
      if attributes && content && @tag.end_tag?
        "<#{@tag.name} #{attributes}>#{content}</#{name}>"
      elsif content && end_tag?
        "<#{@tag.name}>#{content}</#{name}>"
      elsif attributes
        "<#{@tag.name} #{attributes}>"
      else
        "<#{@tag.name}>"
      end
    end

    def permitted_content?
      Element::Transparent
    end

    def attributes
      @attributes
    end
    private "attributes"

    def content
      @content.join
    end
    private "content"

    require_relative "element/escapable_text"
    require_relative "element/foreign"
    require_relative "element/normal"
    require_relative "element/raw_text"
    require_relative "element/void"
    require_relative "element/transparent"
  end
end
