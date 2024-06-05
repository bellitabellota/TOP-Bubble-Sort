def bubble_sort (array)
  sorting_array = nil

  array.each_with_index do |number, index|

    if number == array[-1]
      next
    elsif number > array[index + 1]
      array[index] = array[index + 1]
      array[index + 1] = number
    end
    sorting_array = array
  end
end

p bubble_sort([4,3,78,2,0,2])