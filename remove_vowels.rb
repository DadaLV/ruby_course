def remove_vowels(str)
  re = /[aeoiuAEOIU]/
 str.gsub(re, "")
end

puts(remove_vowels("Hello world"))