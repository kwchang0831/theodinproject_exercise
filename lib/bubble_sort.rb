# Iterative Version
def bubble_sort(inputArray = [])
  newArray = inputArray.clone
  n = newArray.size
  swapped = true

  while swapped
    swapped = false
    (n - 1).times do |i|
      if newArray[i] > newArray[i + 1]
        newArray[i], newArray[i + 1] = newArray[i + 1], newArray[i]
        swapped = true
      end
    end
    n -= 1
  end

  return newArray
end

# # Recursive Verison
# def bubble_sort(inputArray = [])
#   newArray = inputArray.clone
#   n = newArray.size

#   def bubble_sort_recursive(arr, size)
#     return arr if size <= 1

#     swapped = false
#     (size - 1).times do |i|
#       if arr[i] > arr[i + 1]
#         arr[i], arr[i + 1] = arr[i + 1], arr[i]
#         swapped = true
#       end
#     end

#     # If no swaps occurred in this pass, the array is sorted
#     return arr unless swapped

#     # Recursively call the function with size - 1
#     bubble_sort_recursive(arr, size - 1)
#   end

#   # Start the recursive sorting process
#   bubble_sort_recursive(newArray, n)
# end
