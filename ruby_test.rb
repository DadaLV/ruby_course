# str = "Hello World!"
# str.downcase!()
# print (str)

# str1 = "World!"
# str2 = 'Hello #{str1}'
# print(str2)

# re = /[A\-Z]/
# puts re.match?("Some - World")

# re = /[A\-Z]/
# puts re.match?("Some World")

# re = /A\-Z/
# puts re.match?("Some World")

# re = /A\-Z/
# puts re.match?("Some - World")

re = /A\-Z/
puts re.match?("Some AZ World")

re = /A\-Z/
puts re.match?("SomeA-Z World")

re = /A.Z/
puts re.match?("Some A9Z World")