def caesar_cipher(str, shift)
  shifted_string = []
  # It's pointless to shift more than 25 steps
  while shift > 25 || shift < -25 do
    puts "Cannot shift more than 25 steps. Please enter new value: "
    shift = gets.chomp.to_i
  end
  # Convert each letter to ascii code
  str.bytes.each do |code|
    # If it's an uppercase letter, shift it by the specified amount
    if code.between?(65, 90)
      code += shift
      # Wrap around if it passes A or Z
      if code > 90
        code -= 26
      elsif code < 65
        code += 26
      end
    # Do the same for lowercase letters
    elsif code.between?(97, 122)
      code += shift
      if code > 122
        code -= 26
      elsif code < 97
        code += 26
      end
    end
    shifted_string.push code.chr
  end
  shifted_string.join
end

puts "String to encrypt: "
initial_string = gets.chomp
puts "Steps to shift: "
shift_amount = gets.chomp.to_i

puts "Encrypted string:\n#{caesar_cipher(initial_string, shift_amount)}"