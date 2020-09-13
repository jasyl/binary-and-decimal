# convert a decimal number into a binary number with each digit as an element in the array
# most significant bit at index 0 and least at index 7
def decimal_to_binary(decimal)
  binary_array = []
  num = decimal
  until num == 0
    binary_array.unshift(num % 2)
    num /= 2
  end
  return binary_array
end

