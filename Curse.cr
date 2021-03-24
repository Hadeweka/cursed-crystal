macro ⭐(emoji_class, args = nil)
  EMOJI_{{emoji_class}}.new({{args ? args : "".id}})
end

macro 🧰(emoji_class)
  class EMOJI_{{emoji_class}}
  end
end

macro ➡️(emoji_class, name, content)
  class EMOJI_{{emoji_class}}
    def {{name.stringify[0..0] == "⭐" ? "initialize#{name.stringify[1..-1].id}".id : name}}
      {{content}}
    end
  end
end

macro 🖊️(args)
  puts {{args}}
end
