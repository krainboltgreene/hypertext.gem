module Hypertext
  class Tag
    class A
      include ::Hypertext::Tag

      ATTRIBUTE_KEYS = GLOBAL_ATTRIBUTE_KEYS + ["href", "target", "rel", "hreflang", "media", "type"]
      VALIDATIONS = [Element::Transparent]

    end
  end
end
