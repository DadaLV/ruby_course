def check_password (c, d)
  proc {|a, b| (a == c && b == d) ? true : false} 
  end
  admin = check_password("u1", "p1")
  admin.call("u1", "p1")