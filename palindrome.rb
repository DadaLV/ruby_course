def next_pal(val)
  newVal = val + 1
  until newVal.to_s.reverse == newVal.to_s do
    newVal +=1
    end
  newVal
end

puts next_pal(11)