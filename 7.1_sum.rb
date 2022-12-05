def sum
  [4, 0, -12].map {|n| yield n}.sum
end
  result = sum {|n| n < 0 ? n ** 2 : n}