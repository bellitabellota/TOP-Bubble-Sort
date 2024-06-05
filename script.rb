def bubble_sort (array)
  sorting_array = "not assigned yet"

  # circle through array once and switch if value[index] is bigger than value[index + 1]
  array.each_with_index do |number, index|

    if number == array[-1]
      break
    elsif number > array[index + 1]
      array[index] = array[index + 1]
      array[index + 1] = number
    end

    sorting_array = array
  end

  # check if in sorting_array all value[index] are smaller than value[index + 1]
  # if not repeat previous step

  sorting_array.each_with_index do |value, index|
    if value == sorting_array[-1]
      next
    elsif value <= sorting_array[index + 1]
    else
      bubble_sort(sorting_array)
    end
  end
end

p bubble_sort([4,3,78,2,0,2])