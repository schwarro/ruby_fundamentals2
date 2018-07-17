def wrap_text(str,sym)
  return "#{sym}#{str}#{sym}"
end

puts "#{wrap_text("hello","---")}"

wrap1 = wrap_text("hello again", "===")
wrap2 = wrap_text(wrap1, "***")
wrap3 = wrap_text(wrap2, "+++")

puts wrap3
