def ceaser_cipher(string, shift)
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u
                v w x y z]
  string_arr = string.chars

  res = string_arr.map do |letter|
    if alphabet.include?(letter.downcase) # Account for non-alphabetic characters
      val = alphabet[(alphabet.find_index(letter.downcase) + shift) % 26] # Modulo allows for wrap around
      if letter == letter.upcase then val.upcase! end # Retain case for uppercase letters
      val
    else
      letter
    end
  end
  res.join
end
