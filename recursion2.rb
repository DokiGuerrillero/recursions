# frozen_string_literal: true

def merge_sort(array)
  return array if array.length <= 1

  left = []
  rigth = []
  array.each_with_index do |element, i|
    if i < (array.length / 2)
      left.push(element)
    else
      rigth.push(element)
    end
  end
  left = merge_sort(left)
  rigth = merge_sort(rigth)
  merge(left, rigth)
end

def merge(alpha, beta)
  result = []
  until alpha.empty? || beta.empty?
    alpha[0] <= beta[0] ? result.push(alpha.shift) : result.push(beta.shift)
  end
  result.push(alpha.shift) until alpha.empty?
  result.push(beta.shift) until beta.empty?

  result
end

p merge_sort([7, 2, 6, 1, 8, 4, 5, 6])
p merge_sort([-7, -2, -6, 1, -8, -4, -5, 6])