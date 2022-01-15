def merge_sort(array)
  return array if array.length < 2

  left = array[0...array.length / 2]
  right = array[array.length / 2..array.length]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  merged_array = []

  left[0] <= right[0] ? (merged_array << left.shift) : (merged_array << right.shift) while left.any? && right.any?

  merged_array << left.shift until left.empty?
  merged_array << right.shift until right.empty?
  merged_array
end

p merge_sort([5, 4, 7, 9, 9, 1, 3])
