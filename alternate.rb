def alternate(n, first, second)
  arr = []
  until arr.length == n do
    arr.push(first)
    if arr.length < n
      arr.push(second)
      end
    end
  arr
end