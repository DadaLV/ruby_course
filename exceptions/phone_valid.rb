def phone_valid?(phone)
 puts /\A\+38\d{10}\z/.match?(phone)
  
end

phone_valid?("+380679469580")