def caesar_cipher(str, shift)
  shifted_string = []
  # Convert each letter to ascii code
  str.bytes.each do |code|
    # If it's an uppercase letter, shift it by the specified amount
    if code.between?(65, 90)
      # Wrap around if it passes the letter Z
      unless (code + shift) > 90
        shifted_string.push (code + shift - 26).chr
        p shifted_string
      else
        shifted_string.push (code + shift).chr
        p shifted_string
      end
    # The same functionality but for lowercase letters
    elsif code.between?(97, 122)
      unless (code + shift) > 122
        shifted_string.push (code + shift - 26).chr
        p shifted_string
      else
        shifted_string.push (code + shift).chr
        p shifted_string
      end
    # We're not shifting anything that's not a letter
    else
      shifted_string.push code.chr
      p shifted_string
    end
  end
  shifted_string
end

puts "String to encrypt: "
initial_string = gets.chomp
puts "Steps to shift: "
shift_amount = gets.chomp.to_i

new_string = caesar_cipher(initial_string, shift_amount)
puts "Encrypted string: #{new_string.join}"