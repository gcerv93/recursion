# frozen_string_literal: true

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
p fibs(10)
p fibs(13)

def fibs_rec(num, array = [0, 1, 1])
  return array if num <= 2

  array << fibs_rec(num - 1, array)[-1] + fibs_rec(num - 1)[-2]
end

# one line for fun
def fibs_rec2(num, array = [0, 1, 1])
  num <= 2 ? array : array << fibs_rec(num - 1, array)[-1] + fibs_rec(num - 1)[-2]
end

p fibs_rec(5)
p fibs_rec(6)
p fibs_rec(10)
p fibs_rec(13)

p fibs_rec2(13)