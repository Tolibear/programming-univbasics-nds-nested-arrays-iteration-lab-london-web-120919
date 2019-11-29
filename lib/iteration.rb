def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  new_array = []
  array_count = 0

  while array_count < src.length do
    new_array << "I love #{src[array_count][0]} and #{src[array_count][1]} on my pizza"
    array_count += 1
  end
  new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  big_number = []
  array_index = 0
  while array_index < src.count do
    big_number << src[array_index].max()
    array_index += 1
  end
  big_number
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  sum_evens = 0
  array_index = 0

  while array_index < src.count do
      sum_of_elements = (src[array_index][0] + src[array_index][1])
      if ( sum_of_elements % 2 == 0)
        sum_evens += sum_of_elements
      end
      array_index += 1
  end
  sum_evens
end
