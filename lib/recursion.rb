def fibs(num)
  i = 1
  array = [0, 1, 1]
  until num <= 2
    prev = array[i]
    curr = array[i + 1]
    array << prev + curr
    num -= 1
    i += 1
  end
  array
end

p fibs(5)
p fibs(6)
p fibs(7)
p fibs(8)
p fibs(9)
p fibs(10)